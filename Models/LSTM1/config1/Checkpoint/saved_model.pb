޵)
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??'
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?G?*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
?G?*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@ *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
~
training/RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_nametraining/RMSprop/iter
w
)training/RMSprop/iter/Read/ReadVariableOpReadVariableOptraining/RMSprop/iter*
_output_shapes
: *
dtype0	
?
training/RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nametraining/RMSprop/decay
y
*training/RMSprop/decay/Read/ReadVariableOpReadVariableOptraining/RMSprop/decay*
_output_shapes
: *
dtype0
?
training/RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name training/RMSprop/learning_rate
?
2training/RMSprop/learning_rate/Read/ReadVariableOpReadVariableOptraining/RMSprop/learning_rate*
_output_shapes
: *
dtype0
?
training/RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nametraining/RMSprop/momentum

-training/RMSprop/momentum/Read/ReadVariableOpReadVariableOptraining/RMSprop/momentum*
_output_shapes
: *
dtype0
|
training/RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nametraining/RMSprop/rho
u
(training/RMSprop/rho/Read/ReadVariableOpReadVariableOptraining/RMSprop/rho*
_output_shapes
: *
dtype0
?
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_namelstm/lstm_cell/kernel
?
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel* 
_output_shapes
:
??*
dtype0
?
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*0
shared_name!lstm/lstm_cell/recurrent_kernel
?
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	@?*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:?*
dtype0
?
!training/RMSprop/dense/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *2
shared_name#!training/RMSprop/dense/kernel/rms
?
5training/RMSprop/dense/kernel/rms/Read/ReadVariableOpReadVariableOp!training/RMSprop/dense/kernel/rms*
_output_shapes

:@ *
dtype0
?
training/RMSprop/dense/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!training/RMSprop/dense/bias/rms
?
3training/RMSprop/dense/bias/rms/Read/ReadVariableOpReadVariableOptraining/RMSprop/dense/bias/rms*
_output_shapes
: *
dtype0
?
#training/RMSprop/dense_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *4
shared_name%#training/RMSprop/dense_1/kernel/rms
?
7training/RMSprop/dense_1/kernel/rms/Read/ReadVariableOpReadVariableOp#training/RMSprop/dense_1/kernel/rms*
_output_shapes

: *
dtype0
?
!training/RMSprop/dense_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!training/RMSprop/dense_1/bias/rms
?
5training/RMSprop/dense_1/bias/rms/Read/ReadVariableOpReadVariableOp!training/RMSprop/dense_1/bias/rms*
_output_shapes
:*
dtype0
?
*training/RMSprop/lstm/lstm_cell/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*training/RMSprop/lstm/lstm_cell/kernel/rms
?
>training/RMSprop/lstm/lstm_cell/kernel/rms/Read/ReadVariableOpReadVariableOp*training/RMSprop/lstm/lstm_cell/kernel/rms* 
_output_shapes
:
??*
dtype0
?
4training/RMSprop/lstm/lstm_cell/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*E
shared_name64training/RMSprop/lstm/lstm_cell/recurrent_kernel/rms
?
Htraining/RMSprop/lstm/lstm_cell/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp4training/RMSprop/lstm/lstm_cell/recurrent_kernel/rms*
_output_shapes
:	@?*
dtype0
?
(training/RMSprop/lstm/lstm_cell/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(training/RMSprop/lstm/lstm_cell/bias/rms
?
<training/RMSprop/lstm/lstm_cell/bias/rms/Read/ReadVariableOpReadVariableOp(training/RMSprop/lstm/lstm_cell/bias/rms*
_output_shapes	
:?*
dtype0

NoOpNoOp
?'
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?&
value?&B?& B?&
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
 	keras_api
h

!kernel
"bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
?
'iter
	(decay
)learning_rate
*momentum
+rho	rmsX	rmsY	!rmsZ	"rms[	,rms\	-rms]	.rms^
 
8
0
,1
-2
.3
4
5
!6
"7
1
,0
-1
.2
3
4
!5
"6
?
/layer_metrics

0layers
1metrics
2non_trainable_variables
3layer_regularization_losses
regularization_losses
	variables
	trainable_variables
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 
 
?
4layer_metrics

5layers
6metrics
7non_trainable_variables
	variables
8layer_regularization_losses
regularization_losses
trainable_variables
?
9
state_size

,kernel
-recurrent_kernel
.bias
:	variables
;regularization_losses
<trainable_variables
=	keras_api
 
 

,0
-1
.2

,0
-1
.2
?
>layer_metrics

?states

@layers
Ametrics
Bnon_trainable_variables
Clayer_regularization_losses
regularization_losses
	variables
trainable_variables
 
 
 
?
Dlayer_metrics

Elayers
Fmetrics
Gnon_trainable_variables
	variables
Hlayer_regularization_losses
regularization_losses
trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Ilayer_metrics

Jlayers
Kmetrics
Lnon_trainable_variables
	variables
Mlayer_regularization_losses
regularization_losses
trainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1
 

!0
"1
?
Nlayer_metrics

Olayers
Pmetrics
Qnon_trainable_variables
#	variables
Rlayer_regularization_losses
$regularization_losses
%trainable_variables
TR
VARIABLE_VALUEtraining/RMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtraining/RMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEtraining/RMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEtraining/RMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEtraining/RMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUElstm/lstm_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4
 

0
 
 
 
 

0
 
 

,0
-1
.2
 

,0
-1
.2
?
Slayer_metrics

Tlayers
Umetrics
Vnon_trainable_variables
:	variables
Wlayer_regularization_losses
;regularization_losses
<trainable_variables
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
??
VARIABLE_VALUE!training/RMSprop/dense/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEtraining/RMSprop/dense/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training/RMSprop/dense_1/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training/RMSprop/dense_1/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*training/RMSprop/lstm/lstm_cell/kernel/rmsDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE4training/RMSprop/lstm/lstm_cell/recurrent_kernel/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(training/RMSprop/lstm/lstm_cell/bias/rmsDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_embedding_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/biaslstm/lstm_cell/recurrent_kerneldense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_34325
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp)training/RMSprop/iter/Read/ReadVariableOp*training/RMSprop/decay/Read/ReadVariableOp2training/RMSprop/learning_rate/Read/ReadVariableOp-training/RMSprop/momentum/Read/ReadVariableOp(training/RMSprop/rho/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOp5training/RMSprop/dense/kernel/rms/Read/ReadVariableOp3training/RMSprop/dense/bias/rms/Read/ReadVariableOp7training/RMSprop/dense_1/kernel/rms/Read/ReadVariableOp5training/RMSprop/dense_1/bias/rms/Read/ReadVariableOp>training/RMSprop/lstm/lstm_cell/kernel/rms/Read/ReadVariableOpHtraining/RMSprop/lstm/lstm_cell/recurrent_kernel/rms/Read/ReadVariableOp<training/RMSprop/lstm/lstm_cell/bias/rms/Read/ReadVariableOpConst*!
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_36734
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biastraining/RMSprop/itertraining/RMSprop/decaytraining/RMSprop/learning_ratetraining/RMSprop/momentumtraining/RMSprop/rholstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/bias!training/RMSprop/dense/kernel/rmstraining/RMSprop/dense/bias/rms#training/RMSprop/dense_1/kernel/rms!training/RMSprop/dense_1/bias/rms*training/RMSprop/lstm/lstm_cell/kernel/rms4training/RMSprop/lstm/lstm_cell/recurrent_kernel/rms(training/RMSprop/lstm/lstm_cell/bias/rms* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_36804??&
??
?
 sequential_lstm_while_body_31388<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0`
Lsequential_lstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0:
??[
Lsequential_lstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0:	?c
Psequential_lstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	@?"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor^
Jsequential_lstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??Y
Jsequential_lstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?a
Nsequential_lstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@???.sequential/lstm/while/lstm_cell/ReadVariableOp?0sequential/lstm/while/lstm_cell/ReadVariableOp_1?0sequential/lstm/while/lstm_cell/ReadVariableOp_2?0sequential/lstm/while/lstm_cell/ReadVariableOp_3?4sequential/lstm/while/lstm_cell/split/ReadVariableOp?6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp?
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  2I
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02;
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItem?
/sequential/lstm/while/lstm_cell/ones_like/ShapeShape@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:21
/sequential/lstm/while/lstm_cell/ones_like/Shape?
/sequential/lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential/lstm/while/lstm_cell/ones_like/Const?
)sequential/lstm/while/lstm_cell/ones_likeFill8sequential/lstm/while/lstm_cell/ones_like/Shape:output:08sequential/lstm/while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2+
)sequential/lstm/while/lstm_cell/ones_like?
1sequential/lstm/while/lstm_cell/ones_like_1/ShapeShape#sequential_lstm_while_placeholder_2*
T0*
_output_shapes
:23
1sequential/lstm/while/lstm_cell/ones_like_1/Shape?
1sequential/lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??23
1sequential/lstm/while/lstm_cell/ones_like_1/Const?
+sequential/lstm/while/lstm_cell/ones_like_1Fill:sequential/lstm/while/lstm_cell/ones_like_1/Shape:output:0:sequential/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2-
+sequential/lstm/while/lstm_cell/ones_like_1?
#sequential/lstm/while/lstm_cell/mulMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2%
#sequential/lstm/while/lstm_cell/mul?
%sequential/lstm/while/lstm_cell/mul_1Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/while/lstm_cell/mul_1?
%sequential/lstm/while/lstm_cell/mul_2Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/while/lstm_cell/mul_2?
%sequential/lstm/while/lstm_cell/mul_3Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/while/lstm_cell/mul_3?
/sequential/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential/lstm/while/lstm_cell/split/split_dim?
4sequential/lstm/while/lstm_cell/split/ReadVariableOpReadVariableOpLsequential_lstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0* 
_output_shapes
:
??*
dtype026
4sequential/lstm/while/lstm_cell/split/ReadVariableOp?
%sequential/lstm/while/lstm_cell/splitSplit8sequential/lstm/while/lstm_cell/split/split_dim:output:0<sequential/lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2'
%sequential/lstm/while/lstm_cell/split?
&sequential/lstm/while/lstm_cell/MatMulMatMul'sequential/lstm/while/lstm_cell/mul:z:0.sequential/lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2(
&sequential/lstm/while/lstm_cell/MatMul?
(sequential/lstm/while/lstm_cell/MatMul_1MatMul)sequential/lstm/while/lstm_cell/mul_1:z:0.sequential/lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_1?
(sequential/lstm/while/lstm_cell/MatMul_2MatMul)sequential/lstm/while/lstm_cell/mul_2:z:0.sequential/lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_2?
(sequential/lstm/while/lstm_cell/MatMul_3MatMul)sequential/lstm/while/lstm_cell/mul_3:z:0.sequential/lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_3?
1sequential/lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential/lstm/while/lstm_cell/split_1/split_dim?
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpLsequential_lstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:?*
dtype028
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp?
'sequential/lstm/while/lstm_cell/split_1Split:sequential/lstm/while/lstm_cell/split_1/split_dim:output:0>sequential/lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2)
'sequential/lstm/while/lstm_cell/split_1?
'sequential/lstm/while/lstm_cell/BiasAddBiasAdd0sequential/lstm/while/lstm_cell/MatMul:product:00sequential/lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2)
'sequential/lstm/while/lstm_cell/BiasAdd?
)sequential/lstm/while/lstm_cell/BiasAdd_1BiasAdd2sequential/lstm/while/lstm_cell/MatMul_1:product:00sequential/lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2+
)sequential/lstm/while/lstm_cell/BiasAdd_1?
)sequential/lstm/while/lstm_cell/BiasAdd_2BiasAdd2sequential/lstm/while/lstm_cell/MatMul_2:product:00sequential/lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2+
)sequential/lstm/while/lstm_cell/BiasAdd_2?
)sequential/lstm/while/lstm_cell/BiasAdd_3BiasAdd2sequential/lstm/while/lstm_cell/MatMul_3:product:00sequential/lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2+
)sequential/lstm/while/lstm_cell/BiasAdd_3?
%sequential/lstm/while/lstm_cell/mul_4Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/mul_4?
%sequential/lstm/while/lstm_cell/mul_5Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/mul_5?
%sequential/lstm/while/lstm_cell/mul_6Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/mul_6?
%sequential/lstm/while/lstm_cell/mul_7Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/mul_7?
.sequential/lstm/while/lstm_cell/ReadVariableOpReadVariableOpPsequential_lstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype020
.sequential/lstm/while/lstm_cell/ReadVariableOp?
3sequential/lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential/lstm/while/lstm_cell/strided_slice/stack?
5sequential/lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   27
5sequential/lstm/while/lstm_cell/strided_slice/stack_1?
5sequential/lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential/lstm/while/lstm_cell/strided_slice/stack_2?
-sequential/lstm/while/lstm_cell/strided_sliceStridedSlice6sequential/lstm/while/lstm_cell/ReadVariableOp:value:0<sequential/lstm/while/lstm_cell/strided_slice/stack:output:0>sequential/lstm/while/lstm_cell/strided_slice/stack_1:output:0>sequential/lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2/
-sequential/lstm/while/lstm_cell/strided_slice?
(sequential/lstm/while/lstm_cell/MatMul_4MatMul)sequential/lstm/while/lstm_cell/mul_4:z:06sequential/lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_4?
#sequential/lstm/while/lstm_cell/addAddV20sequential/lstm/while/lstm_cell/BiasAdd:output:02sequential/lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2%
#sequential/lstm/while/lstm_cell/add?
'sequential/lstm/while/lstm_cell/SigmoidSigmoid'sequential/lstm/while/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2)
'sequential/lstm/while/lstm_cell/Sigmoid?
0sequential/lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOpPsequential_lstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype022
0sequential/lstm/while/lstm_cell/ReadVariableOp_1?
5sequential/lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5sequential/lstm/while/lstm_cell/strided_slice_1/stack?
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   29
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_1?
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_2?
/sequential/lstm/while/lstm_cell/strided_slice_1StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_1:value:0>sequential/lstm/while/lstm_cell/strided_slice_1/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_1/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/sequential/lstm/while/lstm_cell/strided_slice_1?
(sequential/lstm/while/lstm_cell/MatMul_5MatMul)sequential/lstm/while/lstm_cell/mul_5:z:08sequential/lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_5?
%sequential/lstm/while/lstm_cell/add_1AddV22sequential/lstm/while/lstm_cell/BiasAdd_1:output:02sequential/lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/add_1?
)sequential/lstm/while/lstm_cell/Sigmoid_1Sigmoid)sequential/lstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2+
)sequential/lstm/while/lstm_cell/Sigmoid_1?
%sequential/lstm/while/lstm_cell/mul_8Mul-sequential/lstm/while/lstm_cell/Sigmoid_1:y:0#sequential_lstm_while_placeholder_3*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/mul_8?
0sequential/lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOpPsequential_lstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype022
0sequential/lstm/while/lstm_cell/ReadVariableOp_2?
5sequential/lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   27
5sequential/lstm/while/lstm_cell/strided_slice_2/stack?
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   29
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_1?
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_2?
/sequential/lstm/while/lstm_cell/strided_slice_2StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_2:value:0>sequential/lstm/while/lstm_cell/strided_slice_2/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_2/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/sequential/lstm/while/lstm_cell/strided_slice_2?
(sequential/lstm/while/lstm_cell/MatMul_6MatMul)sequential/lstm/while/lstm_cell/mul_6:z:08sequential/lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_6?
%sequential/lstm/while/lstm_cell/add_2AddV22sequential/lstm/while/lstm_cell/BiasAdd_2:output:02sequential/lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/add_2?
$sequential/lstm/while/lstm_cell/TanhTanh)sequential/lstm/while/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2&
$sequential/lstm/while/lstm_cell/Tanh?
%sequential/lstm/while/lstm_cell/mul_9Mul+sequential/lstm/while/lstm_cell/Sigmoid:y:0(sequential/lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/mul_9?
%sequential/lstm/while/lstm_cell/add_3AddV2)sequential/lstm/while/lstm_cell/mul_8:z:0)sequential/lstm/while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/add_3?
0sequential/lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOpPsequential_lstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype022
0sequential/lstm/while/lstm_cell/ReadVariableOp_3?
5sequential/lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   27
5sequential/lstm/while/lstm_cell/strided_slice_3/stack?
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_1?
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_2?
/sequential/lstm/while/lstm_cell/strided_slice_3StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_3:value:0>sequential/lstm/while/lstm_cell/strided_slice_3/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_3/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/sequential/lstm/while/lstm_cell/strided_slice_3?
(sequential/lstm/while/lstm_cell/MatMul_7MatMul)sequential/lstm/while/lstm_cell/mul_7:z:08sequential/lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_7?
%sequential/lstm/while/lstm_cell/add_4AddV22sequential/lstm/while/lstm_cell/BiasAdd_3:output:02sequential/lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/add_4?
)sequential/lstm/while/lstm_cell/Sigmoid_2Sigmoid)sequential/lstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2+
)sequential/lstm/while/lstm_cell/Sigmoid_2?
&sequential/lstm/while/lstm_cell/Tanh_1Tanh)sequential/lstm/while/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2(
&sequential/lstm/while/lstm_cell/Tanh_1?
&sequential/lstm/while/lstm_cell/mul_10Mul-sequential/lstm/while/lstm_cell/Sigmoid_2:y:0*sequential/lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2(
&sequential/lstm/while/lstm_cell/mul_10?
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder*sequential/lstm/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02<
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItem|
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/lstm/while/add/y?
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/while/add?
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/lstm/while/add_1/y?
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/while/add_1?
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2 
sequential/lstm/while/Identity?
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_1?
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_2?
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_3?
 sequential/lstm/while/Identity_4Identity*sequential/lstm/while/lstm_cell/mul_10:z:0/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/while/Identity_4?
 sequential/lstm/while/Identity_5Identity)sequential/lstm/while/lstm_cell/add_3:z:0/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/while/Identity_5"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"?
Nsequential_lstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernelPsequential_lstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0"?
Jsequential_lstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_biasLsequential_lstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0"?
Jsequential_lstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernelLsequential_lstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"?
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2`
.sequential/lstm/while/lstm_cell/ReadVariableOp.sequential/lstm/while/lstm_cell/ReadVariableOp2d
0sequential/lstm/while/lstm_cell/ReadVariableOp_10sequential/lstm/while/lstm_cell/ReadVariableOp_12d
0sequential/lstm/while/lstm_cell/ReadVariableOp_20sequential/lstm/while/lstm_cell/ReadVariableOp_22d
0sequential/lstm/while/lstm_cell/ReadVariableOp_30sequential/lstm/while/lstm_cell/ReadVariableOp_32l
4sequential/lstm/while/lstm_cell/split/ReadVariableOp4sequential/lstm/while/lstm_cell/split/ReadVariableOp2p
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_34218

inputs2
embedding_embedding_embeddings:
?G?.
lstm_lstm_lstm_cell_kernel:
??'
lstm_lstm_lstm_cell_bias:	?7
$lstm_lstm_lstm_cell_recurrent_kernel:	@?$
dense_dense_kernel:@ 
dense_dense_bias: (
dense_1_dense_1_kernel: "
dense_1_dense_1_bias:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_embedding_embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_327622#
!embedding/StatefulPartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0lstm_lstm_lstm_cell_kernellstm_lstm_lstm_cell_bias$lstm_lstm_lstm_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_335342
lstm/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_331252!
dropout/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_330382
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_330522!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_32880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_32880___redundant_placeholder03
/while_while_cond_32880___redundant_placeholder13
/while_while_cond_32880___redundant_placeholder23
/while_while_cond_32880___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
$__inference_lstm_layer_call_fn_35049
inputs_0)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_317382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_33025

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_36333

inputsH
4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??C
4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?K
8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:???????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likew
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout/Const?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul~
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout/Shape?
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???20
.lstm_cell/dropout/random_uniform/RandomUniform?
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 lstm_cell/dropout/GreaterEqual/y?
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
lstm_cell/dropout/GreaterEqual?
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout/Cast?
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul_1{
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_1/Const?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul?
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_1/Shape?
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2é22
0lstm_cell/dropout_1/random_uniform/RandomUniform?
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_1/GreaterEqual/y?
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_1/GreaterEqual?
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Cast?
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul_1{
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_2/Const?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul?
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_2/Shape?
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2镴22
0lstm_cell/dropout_2/random_uniform/RandomUniform?
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_2/GreaterEqual/y?
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_2/GreaterEqual?
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Cast?
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul_1{
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_3/Const?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul?
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_3/Shape?
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2޸?22
0lstm_cell/dropout_3/random_uniform/RandomUniform?
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_3/GreaterEqual/y?
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_3/GreaterEqual?
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Cast?
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul_1x
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1{
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_4/Const?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul?
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_4/Shape?
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_4/random_uniform/RandomUniform?
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_4/GreaterEqual/y?
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_4/GreaterEqual?
lstm_cell/dropout_4/CastCast$lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Cast?
lstm_cell/dropout_4/Mul_1Mullstm_cell/dropout_4/Mul:z:0lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul_1{
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_5/Const?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul?
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_5/Shape?
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??P22
0lstm_cell/dropout_5/random_uniform/RandomUniform?
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_5/GreaterEqual/y?
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_5/GreaterEqual?
lstm_cell/dropout_5/CastCast$lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Cast?
lstm_cell/dropout_5/Mul_1Mullstm_cell/dropout_5/Mul:z:0lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul_1{
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_6/Const?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul?
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_6/Shape?
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_6/random_uniform/RandomUniform?
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_6/GreaterEqual/y?
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_6/GreaterEqual?
lstm_cell/dropout_6/CastCast$lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Cast?
lstm_cell/dropout_6/Mul_1Mullstm_cell/dropout_6/Mul:z:0lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul_1{
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_7/Const?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul?
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_7/Shape?
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_7/random_uniform/RandomUniform?
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_7/GreaterEqual/y?
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_7/GreaterEqual?
lstm_cell/dropout_7/CastCast$lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Cast?
lstm_cell/dropout_7/Mul_1Mullstm_cell/dropout_7/Mul:z:0lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addv
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_1|
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2o
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4|
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_cell_split_readvariableop_lstm_lstm_cell_kernel4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_36135*
condR
while_cond_36134*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:???????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
while_cond_36134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_36134___redundant_placeholder03
/while_while_cond_36134___redundant_placeholder13
/while_while_cond_36134___redundant_placeholder23
/while_while_cond_36134___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
C
'__inference_dropout_layer_call_fn_36338

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_330252
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_35703
inputs_0H
4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??C
4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?K
8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likew
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout/Const?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul~
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout/Shape?
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2Ŝ?20
.lstm_cell/dropout/random_uniform/RandomUniform?
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 lstm_cell/dropout/GreaterEqual/y?
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
lstm_cell/dropout/GreaterEqual?
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout/Cast?
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul_1{
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_1/Const?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul?
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_1/Shape?
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_1/random_uniform/RandomUniform?
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_1/GreaterEqual/y?
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_1/GreaterEqual?
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Cast?
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul_1{
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_2/Const?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul?
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_2/Shape?
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2쳍22
0lstm_cell/dropout_2/random_uniform/RandomUniform?
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_2/GreaterEqual/y?
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_2/GreaterEqual?
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Cast?
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul_1{
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_3/Const?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul?
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_3/Shape?
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_3/random_uniform/RandomUniform?
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_3/GreaterEqual/y?
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_3/GreaterEqual?
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Cast?
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul_1x
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1{
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_4/Const?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul?
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_4/Shape?
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?ĭ22
0lstm_cell/dropout_4/random_uniform/RandomUniform?
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_4/GreaterEqual/y?
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_4/GreaterEqual?
lstm_cell/dropout_4/CastCast$lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Cast?
lstm_cell/dropout_4/Mul_1Mullstm_cell/dropout_4/Mul:z:0lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul_1{
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_5/Const?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul?
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_5/Shape?
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_5/random_uniform/RandomUniform?
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_5/GreaterEqual/y?
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_5/GreaterEqual?
lstm_cell/dropout_5/CastCast$lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Cast?
lstm_cell/dropout_5/Mul_1Mullstm_cell/dropout_5/Mul:z:0lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul_1{
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_6/Const?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul?
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_6/Shape?
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_6/random_uniform/RandomUniform?
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_6/GreaterEqual/y?
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_6/GreaterEqual?
lstm_cell/dropout_6/CastCast$lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Cast?
lstm_cell/dropout_6/Mul_1Mullstm_cell/dropout_6/Mul:z:0lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul_1{
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_7/Const?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul?
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_7/Shape?
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?š22
0lstm_cell/dropout_7/random_uniform/RandomUniform?
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_7/GreaterEqual/y?
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_7/GreaterEqual?
lstm_cell/dropout_7/CastCast$lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Cast?
lstm_cell/dropout_7/Mul_1Mullstm_cell/dropout_7/Mul:z:0lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addv
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_1|
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2o
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4|
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_cell_split_readvariableop_lstm_lstm_cell_kernel4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35505*
condR
while_cond_35504*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*:
_input_shapes)
':???????????????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
??
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_36651

inputs
states_0
states_1>
*split_readvariableop_lstm_lstm_cell_kernel:
??9
*split_1_readvariableop_lstm_lstm_cell_bias:	?A
.readvariableop_lstm_lstm_cell_recurrent_kernel:	@?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const?
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ͨ?2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??X2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_6/Const?
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shape?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_6/GreaterEqual/y?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_6/GreaterEqual?
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_6/Cast?
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_7/Const?
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shape?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2Я?2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_7/GreaterEqual/y?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_7/GreaterEqual?
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_7/Cast?
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOp*split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????@2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????@2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????@2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOp*split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3f
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_4f
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_5f
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_6f
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_7?
ReadVariableOpReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@2	
Sigmoid?
ReadVariableOp_1ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mul_8?
ReadVariableOp_2ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:?????????@2
add_3?
ReadVariableOp_3ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????@2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
??
?	
while_body_33336
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0:
??K
<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0:	?S
@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??I
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?Q
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
while/lstm_cell/dropout/Const?
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul?
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/lstm_cell/dropout/Shape?
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???26
4while/lstm_cell/dropout/random_uniform/RandomUniform?
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2(
&while/lstm_cell/dropout/GreaterEqual/y?
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2&
$while/lstm_cell/dropout/GreaterEqual?
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Cast?
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul_1?
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_1/Const?
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_1/Mul?
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_1/Shape?
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??	28
6while/lstm_cell/dropout_1/random_uniform/RandomUniform?
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_1/GreaterEqual/y?
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_1/GreaterEqual?
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_1/Cast?
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_1/Mul_1?
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_2/Const?
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_2/Mul?
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_2/Shape?
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_2/random_uniform/RandomUniform?
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_2/GreaterEqual/y?
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_2/GreaterEqual?
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_2/Cast?
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_2/Mul_1?
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_3/Const?
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_3/Mul?
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_3/Shape?
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??W28
6while/lstm_cell/dropout_3/random_uniform/RandomUniform?
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_3/GreaterEqual/y?
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_3/GreaterEqual?
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_3/Cast?
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_3/Mul_1?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_4/Const?
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_4/Mul?
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_4/Shape?
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_4/random_uniform/RandomUniform?
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_4/GreaterEqual/y?
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_4/GreaterEqual?
while/lstm_cell/dropout_4/CastCast*while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_4/Cast?
while/lstm_cell/dropout_4/Mul_1Mul!while/lstm_cell/dropout_4/Mul:z:0"while/lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_4/Mul_1?
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_5/Const?
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_5/Mul?
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_5/Shape?
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_5/random_uniform/RandomUniform?
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_5/GreaterEqual/y?
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_5/GreaterEqual?
while/lstm_cell/dropout_5/CastCast*while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_5/Cast?
while/lstm_cell/dropout_5/Mul_1Mul!while/lstm_cell/dropout_5/Mul:z:0"while/lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_5/Mul_1?
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_6/Const?
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_6/Mul?
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_6/Shape?
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?֪28
6while/lstm_cell/dropout_6/random_uniform/RandomUniform?
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_6/GreaterEqual/y?
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_6/GreaterEqual?
while/lstm_cell/dropout_6/CastCast*while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_6/Cast?
while/lstm_cell/dropout_6/Mul_1Mul!while/lstm_cell/dropout_6/Mul:z:0"while/lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_6/Mul_1?
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_7/Const?
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_7/Mul?
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_7/Shape?
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_7/random_uniform/RandomUniform?
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_7/GreaterEqual/y?
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_7/GreaterEqual?
while/lstm_cell/dropout_7/CastCast*while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_7/Cast?
while/lstm_cell/dropout_7/Mul_1Mul!while/lstm_cell/dropout_7/Mul:z:0"while/lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_7/Mul_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2#while/lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2#while/lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2#while/lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2#while/lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"?
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0"z
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0"z
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?

?
@__inference_dense_layer_call_and_return_conditional_losses_33038

inputs4
"matmul_readvariableop_dense_kernel:@ /
!biasadd_readvariableop_dense_bias: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp"matmul_readvariableop_dense_kernel*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp!biasadd_readvariableop_dense_bias*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?	
while_body_35820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0:
??K
<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0:	?S
@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??I
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?Q
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"?
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0"z
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0"z
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_lstm_cell_layer_call_fn_36423

inputs
states_0
states_1)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kernel*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_319092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?F
?
?__inference_lstm_layer_call_and_return_conditional_losses_32272

inputs3
lstm_cell_lstm_lstm_cell_kernel:
??,
lstm_cell_lstm_lstm_cell_bias:	?<
)lstm_cell_lstm_lstm_cell_recurrent_kernel:	@?
identity??!lstm_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_lstm_lstm_cell_kernellstm_cell_lstm_lstm_cell_bias)lstm_cell_lstm_lstm_cell_recurrent_kernel*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_319092#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_lstm_lstm_cell_kernellstm_cell_lstm_lstm_cell_bias)lstm_cell_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_32206*
condR
while_cond_32205*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?	
 __inference__wrapped_model_31536
embedding_inputN
:sequential_embedding_embedding_lookup_embedding_embeddings:
?G?X
Dsequential_lstm_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??S
Dsequential_lstm_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?[
Hsequential_lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@?E
3sequential_dense_matmul_readvariableop_dense_kernel:@ @
2sequential_dense_biasadd_readvariableop_dense_bias: I
7sequential_dense_1_matmul_readvariableop_dense_1_kernel: D
6sequential_dense_1_biasadd_readvariableop_dense_1_bias:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?(sequential/lstm/lstm_cell/ReadVariableOp?*sequential/lstm/lstm_cell/ReadVariableOp_1?*sequential/lstm/lstm_cell/ReadVariableOp_2?*sequential/lstm/lstm_cell/ReadVariableOp_3?.sequential/lstm/lstm_cell/split/ReadVariableOp?0sequential/lstm/lstm_cell/split_1/ReadVariableOp?sequential/lstm/while?
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*(
_output_shapes
:??????????2
sequential/embedding/Cast?
%sequential/embedding/embedding_lookupResourceGather:sequential_embedding_embedding_lookup_embedding_embeddingssequential/embedding/Cast:y:0*
Tindices0*M
_classC
A?loc:@sequential/embedding/embedding_lookup/embedding/embeddings*-
_output_shapes
:???????????*
dtype02'
%sequential/embedding/embedding_lookup?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*M
_classC
A?loc:@sequential/embedding/embedding_lookup/embedding/embeddings*-
_output_shapes
:???????????20
.sequential/embedding/embedding_lookup/Identity?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????22
0sequential/embedding/embedding_lookup/Identity_1?
sequential/lstm/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
sequential/lstm/Shape?
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#sequential/lstm/strided_slice/stack?
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_1?
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_2?
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sequential/lstm/strided_slice|
sequential/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
sequential/lstm/zeros/mul/y?
sequential/lstm/zeros/mulMul&sequential/lstm/strided_slice:output:0$sequential/lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/mul
sequential/lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
sequential/lstm/zeros/Less/y?
sequential/lstm/zeros/LessLesssequential/lstm/zeros/mul:z:0%sequential/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/Less?
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2 
sequential/lstm/zeros/packed/1?
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
sequential/lstm/zeros/packed
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros/Const?
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
sequential/lstm/zeros?
sequential/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
sequential/lstm/zeros_1/mul/y?
sequential/lstm/zeros_1/mulMul&sequential/lstm/strided_slice:output:0&sequential/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/mul?
sequential/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2 
sequential/lstm/zeros_1/Less/y?
sequential/lstm/zeros_1/LessLesssequential/lstm/zeros_1/mul:z:0'sequential/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/Less?
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2"
 sequential/lstm/zeros_1/packed/1?
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2 
sequential/lstm/zeros_1/packed?
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros_1/Const?
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
sequential/lstm/zeros_1?
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
sequential/lstm/transpose/perm?
sequential/lstm/transpose	Transpose9sequential/embedding/embedding_lookup/Identity_1:output:0'sequential/lstm/transpose/perm:output:0*
T0*-
_output_shapes
:???????????2
sequential/lstm/transpose
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:2
sequential/lstm/Shape_1?
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lstm/strided_slice_1/stack?
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_1/stack_1?
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_1/stack_2?
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
sequential/lstm/strided_slice_1?
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+sequential/lstm/TensorArrayV2/element_shape?
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
sequential/lstm/TensorArrayV2?
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  2G
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7sequential/lstm/TensorArrayUnstack/TensorListFromTensor?
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lstm/strided_slice_2/stack?
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_2/stack_1?
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_2/stack_2?
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2!
sequential/lstm/strided_slice_2?
)sequential/lstm/lstm_cell/ones_like/ShapeShape(sequential/lstm/strided_slice_2:output:0*
T0*
_output_shapes
:2+
)sequential/lstm/lstm_cell/ones_like/Shape?
)sequential/lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)sequential/lstm/lstm_cell/ones_like/Const?
#sequential/lstm/lstm_cell/ones_likeFill2sequential/lstm/lstm_cell/ones_like/Shape:output:02sequential/lstm/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2%
#sequential/lstm/lstm_cell/ones_like?
+sequential/lstm/lstm_cell/ones_like_1/ShapeShapesequential/lstm/zeros:output:0*
T0*
_output_shapes
:2-
+sequential/lstm/lstm_cell/ones_like_1/Shape?
+sequential/lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+sequential/lstm/lstm_cell/ones_like_1/Const?
%sequential/lstm/lstm_cell/ones_like_1Fill4sequential/lstm/lstm_cell/ones_like_1/Shape:output:04sequential/lstm/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/lstm_cell/ones_like_1?
sequential/lstm/lstm_cell/mulMul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
sequential/lstm/lstm_cell/mul?
sequential/lstm/lstm_cell/mul_1Mul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2!
sequential/lstm/lstm_cell/mul_1?
sequential/lstm/lstm_cell/mul_2Mul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2!
sequential/lstm/lstm_cell/mul_2?
sequential/lstm/lstm_cell/mul_3Mul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2!
sequential/lstm/lstm_cell/mul_3?
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)sequential/lstm/lstm_cell/split/split_dim?
.sequential/lstm/lstm_cell/split/ReadVariableOpReadVariableOpDsequential_lstm_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype020
.sequential/lstm/lstm_cell/split/ReadVariableOp?
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:06sequential/lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2!
sequential/lstm/lstm_cell/split?
 sequential/lstm/lstm_cell/MatMulMatMul!sequential/lstm/lstm_cell/mul:z:0(sequential/lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/lstm_cell/MatMul?
"sequential/lstm/lstm_cell/MatMul_1MatMul#sequential/lstm/lstm_cell/mul_1:z:0(sequential/lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_1?
"sequential/lstm/lstm_cell/MatMul_2MatMul#sequential/lstm/lstm_cell/mul_2:z:0(sequential/lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_2?
"sequential/lstm/lstm_cell/MatMul_3MatMul#sequential/lstm/lstm_cell/mul_3:z:0(sequential/lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_3?
+sequential/lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential/lstm/lstm_cell/split_1/split_dim?
0sequential/lstm/lstm_cell/split_1/ReadVariableOpReadVariableOpDsequential_lstm_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype022
0sequential/lstm/lstm_cell/split_1/ReadVariableOp?
!sequential/lstm/lstm_cell/split_1Split4sequential/lstm/lstm_cell/split_1/split_dim:output:08sequential/lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2#
!sequential/lstm/lstm_cell/split_1?
!sequential/lstm/lstm_cell/BiasAddBiasAdd*sequential/lstm/lstm_cell/MatMul:product:0*sequential/lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2#
!sequential/lstm/lstm_cell/BiasAdd?
#sequential/lstm/lstm_cell/BiasAdd_1BiasAdd,sequential/lstm/lstm_cell/MatMul_1:product:0*sequential/lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2%
#sequential/lstm/lstm_cell/BiasAdd_1?
#sequential/lstm/lstm_cell/BiasAdd_2BiasAdd,sequential/lstm/lstm_cell/MatMul_2:product:0*sequential/lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2%
#sequential/lstm/lstm_cell/BiasAdd_2?
#sequential/lstm/lstm_cell/BiasAdd_3BiasAdd,sequential/lstm/lstm_cell/MatMul_3:product:0*sequential/lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2%
#sequential/lstm/lstm_cell/BiasAdd_3?
sequential/lstm/lstm_cell/mul_4Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/mul_4?
sequential/lstm/lstm_cell/mul_5Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/mul_5?
sequential/lstm/lstm_cell/mul_6Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/mul_6?
sequential/lstm/lstm_cell/mul_7Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/mul_7?
(sequential/lstm/lstm_cell/ReadVariableOpReadVariableOpHsequential_lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02*
(sequential/lstm/lstm_cell/ReadVariableOp?
-sequential/lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-sequential/lstm/lstm_cell/strided_slice/stack?
/sequential/lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   21
/sequential/lstm/lstm_cell/strided_slice/stack_1?
/sequential/lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/sequential/lstm/lstm_cell/strided_slice/stack_2?
'sequential/lstm/lstm_cell/strided_sliceStridedSlice0sequential/lstm/lstm_cell/ReadVariableOp:value:06sequential/lstm/lstm_cell/strided_slice/stack:output:08sequential/lstm/lstm_cell/strided_slice/stack_1:output:08sequential/lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2)
'sequential/lstm/lstm_cell/strided_slice?
"sequential/lstm/lstm_cell/MatMul_4MatMul#sequential/lstm/lstm_cell/mul_4:z:00sequential/lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_4?
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/BiasAdd:output:0,sequential/lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
sequential/lstm/lstm_cell/add?
!sequential/lstm/lstm_cell/SigmoidSigmoid!sequential/lstm/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2#
!sequential/lstm/lstm_cell/Sigmoid?
*sequential/lstm/lstm_cell/ReadVariableOp_1ReadVariableOpHsequential_lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02,
*sequential/lstm/lstm_cell/ReadVariableOp_1?
/sequential/lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   21
/sequential/lstm/lstm_cell/strided_slice_1/stack?
1sequential/lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   23
1sequential/lstm/lstm_cell/strided_slice_1/stack_1?
1sequential/lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1sequential/lstm/lstm_cell/strided_slice_1/stack_2?
)sequential/lstm/lstm_cell/strided_slice_1StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_1:value:08sequential/lstm/lstm_cell/strided_slice_1/stack:output:0:sequential/lstm/lstm_cell/strided_slice_1/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2+
)sequential/lstm/lstm_cell/strided_slice_1?
"sequential/lstm/lstm_cell/MatMul_5MatMul#sequential/lstm/lstm_cell/mul_5:z:02sequential/lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_5?
sequential/lstm/lstm_cell/add_1AddV2,sequential/lstm/lstm_cell/BiasAdd_1:output:0,sequential/lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/add_1?
#sequential/lstm/lstm_cell/Sigmoid_1Sigmoid#sequential/lstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2%
#sequential/lstm/lstm_cell/Sigmoid_1?
sequential/lstm/lstm_cell/mul_8Mul'sequential/lstm/lstm_cell/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/mul_8?
*sequential/lstm/lstm_cell/ReadVariableOp_2ReadVariableOpHsequential_lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02,
*sequential/lstm/lstm_cell/ReadVariableOp_2?
/sequential/lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   21
/sequential/lstm/lstm_cell/strided_slice_2/stack?
1sequential/lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   23
1sequential/lstm/lstm_cell/strided_slice_2/stack_1?
1sequential/lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1sequential/lstm/lstm_cell/strided_slice_2/stack_2?
)sequential/lstm/lstm_cell/strided_slice_2StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_2:value:08sequential/lstm/lstm_cell/strided_slice_2/stack:output:0:sequential/lstm/lstm_cell/strided_slice_2/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2+
)sequential/lstm/lstm_cell/strided_slice_2?
"sequential/lstm/lstm_cell/MatMul_6MatMul#sequential/lstm/lstm_cell/mul_6:z:02sequential/lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_6?
sequential/lstm/lstm_cell/add_2AddV2,sequential/lstm/lstm_cell/BiasAdd_2:output:0,sequential/lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/add_2?
sequential/lstm/lstm_cell/TanhTanh#sequential/lstm/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2 
sequential/lstm/lstm_cell/Tanh?
sequential/lstm/lstm_cell/mul_9Mul%sequential/lstm/lstm_cell/Sigmoid:y:0"sequential/lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/mul_9?
sequential/lstm/lstm_cell/add_3AddV2#sequential/lstm/lstm_cell/mul_8:z:0#sequential/lstm/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/add_3?
*sequential/lstm/lstm_cell/ReadVariableOp_3ReadVariableOpHsequential_lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02,
*sequential/lstm/lstm_cell/ReadVariableOp_3?
/sequential/lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   21
/sequential/lstm/lstm_cell/strided_slice_3/stack?
1sequential/lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1sequential/lstm/lstm_cell/strided_slice_3/stack_1?
1sequential/lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1sequential/lstm/lstm_cell/strided_slice_3/stack_2?
)sequential/lstm/lstm_cell/strided_slice_3StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_3:value:08sequential/lstm/lstm_cell/strided_slice_3/stack:output:0:sequential/lstm/lstm_cell/strided_slice_3/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2+
)sequential/lstm/lstm_cell/strided_slice_3?
"sequential/lstm/lstm_cell/MatMul_7MatMul#sequential/lstm/lstm_cell/mul_7:z:02sequential/lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_7?
sequential/lstm/lstm_cell/add_4AddV2,sequential/lstm/lstm_cell/BiasAdd_3:output:0,sequential/lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/add_4?
#sequential/lstm/lstm_cell/Sigmoid_2Sigmoid#sequential/lstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2%
#sequential/lstm/lstm_cell/Sigmoid_2?
 sequential/lstm/lstm_cell/Tanh_1Tanh#sequential/lstm/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/lstm_cell/Tanh_1?
 sequential/lstm/lstm_cell/mul_10Mul'sequential/lstm/lstm_cell/Sigmoid_2:y:0$sequential/lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/lstm_cell/mul_10?
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2/
-sequential/lstm/TensorArrayV2_1/element_shape?
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
sequential/lstm/TensorArrayV2_1n
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lstm/time?
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(sequential/lstm/while/maximum_iterations?
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential/lstm/while/loop_counter?
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_lstm_lstm_cell_split_readvariableop_lstm_lstm_cell_kernelDsequential_lstm_lstm_cell_split_1_readvariableop_lstm_lstm_cell_biasHsequential_lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 sequential_lstm_while_body_31388*,
cond$R"
 sequential_lstm_while_cond_31387*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
sequential/lstm/while?
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2B
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape?
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????@*
element_dtype024
2sequential/lstm/TensorArrayV2Stack/TensorListStack?
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%sequential/lstm/strided_slice_3/stack?
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential/lstm/strided_slice_3/stack_1?
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_3/stack_2?
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2!
sequential/lstm/strided_slice_3?
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 sequential/lstm/transpose_1/perm?
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????@2
sequential/lstm/transpose_1?
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/runtime?
sequential/dropout/IdentityIdentity(sequential/lstm/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
sequential/dropout/Identity?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp3sequential_dense_matmul_readvariableop_dense_kernel*
_output_shapes

:@ *
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul$sequential/dropout/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_biasadd_readvariableop_dense_bias*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/BiasAdd?
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/Relu?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp7sequential_dense_1_matmul_readvariableop_dense_1_kernel*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp6sequential_dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/BiasAdd?
IdentityIdentity#sequential/dense_1/BiasAdd:output:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup)^sequential/lstm/lstm_cell/ReadVariableOp+^sequential/lstm/lstm_cell/ReadVariableOp_1+^sequential/lstm/lstm_cell/ReadVariableOp_2+^sequential/lstm/lstm_cell/ReadVariableOp_3/^sequential/lstm/lstm_cell/split/ReadVariableOp1^sequential/lstm/lstm_cell/split_1/ReadVariableOp^sequential/lstm/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????: : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2T
(sequential/lstm/lstm_cell/ReadVariableOp(sequential/lstm/lstm_cell/ReadVariableOp2X
*sequential/lstm/lstm_cell/ReadVariableOp_1*sequential/lstm/lstm_cell/ReadVariableOp_12X
*sequential/lstm/lstm_cell/ReadVariableOp_2*sequential/lstm/lstm_cell/ReadVariableOp_22X
*sequential/lstm/lstm_cell/ReadVariableOp_3*sequential/lstm/lstm_cell/ReadVariableOp_32`
.sequential/lstm/lstm_cell/split/ReadVariableOp.sequential/lstm/lstm_cell/split/ReadVariableOp2d
0sequential/lstm/lstm_cell/split_1/ReadVariableOp0sequential/lstm/lstm_cell/split_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while:Y U
(
_output_shapes
:??????????
)
_user_specified_nameembedding_input
??
?	
while_body_32881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0:
??K
<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0:	?S
@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??I
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?Q
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"?
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0"z
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0"z
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?O
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_31661

inputs

states
states_1>
*split_readvariableop_lstm_lstm_cell_kernel:
??9
*split_1_readvariableop_lstm_lstm_cell_bias:	?A
.readvariableop_lstm_lstm_cell_recurrent_kernel:	@?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOp*split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????@2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????@2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????@2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOp*split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3e
mul_4Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_4e
mul_5Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_5e
mul_6Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_6e
mul_7Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_7?
ReadVariableOpReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@2	
Sigmoid?
ReadVariableOp_1ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mul_8?
ReadVariableOp_2ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:?????????@2
add_3?
ReadVariableOp_3ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????@2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
??
?	
while_body_36135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0:
??K
<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0:	?S
@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??I
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?Q
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
while/lstm_cell/dropout/Const?
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul?
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/lstm_cell/dropout/Shape?
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???26
4while/lstm_cell/dropout/random_uniform/RandomUniform?
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2(
&while/lstm_cell/dropout/GreaterEqual/y?
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2&
$while/lstm_cell/dropout/GreaterEqual?
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Cast?
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul_1?
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_1/Const?
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_1/Mul?
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_1/Shape?
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_1/random_uniform/RandomUniform?
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_1/GreaterEqual/y?
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_1/GreaterEqual?
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_1/Cast?
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_1/Mul_1?
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_2/Const?
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_2/Mul?
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_2/Shape?
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_2/random_uniform/RandomUniform?
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_2/GreaterEqual/y?
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_2/GreaterEqual?
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_2/Cast?
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_2/Mul_1?
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_3/Const?
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_3/Mul?
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_3/Shape?
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ڙ28
6while/lstm_cell/dropout_3/random_uniform/RandomUniform?
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_3/GreaterEqual/y?
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_3/GreaterEqual?
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_3/Cast?
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_3/Mul_1?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_4/Const?
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_4/Mul?
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_4/Shape?
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_4/random_uniform/RandomUniform?
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_4/GreaterEqual/y?
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_4/GreaterEqual?
while/lstm_cell/dropout_4/CastCast*while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_4/Cast?
while/lstm_cell/dropout_4/Mul_1Mul!while/lstm_cell/dropout_4/Mul:z:0"while/lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_4/Mul_1?
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_5/Const?
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_5/Mul?
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_5/Shape?
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2í_28
6while/lstm_cell/dropout_5/random_uniform/RandomUniform?
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_5/GreaterEqual/y?
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_5/GreaterEqual?
while/lstm_cell/dropout_5/CastCast*while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_5/Cast?
while/lstm_cell/dropout_5/Mul_1Mul!while/lstm_cell/dropout_5/Mul:z:0"while/lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_5/Mul_1?
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_6/Const?
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_6/Mul?
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_6/Shape?
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_6/random_uniform/RandomUniform?
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_6/GreaterEqual/y?
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_6/GreaterEqual?
while/lstm_cell/dropout_6/CastCast*while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_6/Cast?
while/lstm_cell/dropout_6/Mul_1Mul!while/lstm_cell/dropout_6/Mul:z:0"while/lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_6/Mul_1?
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_7/Const?
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_7/Mul?
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_7/Shape?
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?28
6while/lstm_cell/dropout_7/random_uniform/RandomUniform?
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_7/GreaterEqual/y?
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_7/GreaterEqual?
while/lstm_cell/dropout_7/CastCast*while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_7/Cast?
while/lstm_cell/dropout_7/Mul_1Mul!while/lstm_cell/dropout_7/Mul:z:0"while/lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_7/Mul_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2#while/lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2#while/lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2#while/lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2#while/lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"?
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0"z
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0"z
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_33534

inputsH
4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??C
4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?K
8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:???????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likew
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout/Const?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul~
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout/Shape?
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???20
.lstm_cell/dropout/random_uniform/RandomUniform?
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 lstm_cell/dropout/GreaterEqual/y?
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
lstm_cell/dropout/GreaterEqual?
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout/Cast?
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul_1{
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_1/Const?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul?
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_1/Shape?
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ܫ22
0lstm_cell/dropout_1/random_uniform/RandomUniform?
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_1/GreaterEqual/y?
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_1/GreaterEqual?
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Cast?
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul_1{
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_2/Const?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul?
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_2/Shape?
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_2/random_uniform/RandomUniform?
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_2/GreaterEqual/y?
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_2/GreaterEqual?
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Cast?
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul_1{
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_3/Const?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul?
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_3/Shape?
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_3/random_uniform/RandomUniform?
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_3/GreaterEqual/y?
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_3/GreaterEqual?
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Cast?
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul_1x
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1{
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_4/Const?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul?
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_4/Shape?
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_4/random_uniform/RandomUniform?
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_4/GreaterEqual/y?
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_4/GreaterEqual?
lstm_cell/dropout_4/CastCast$lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Cast?
lstm_cell/dropout_4/Mul_1Mullstm_cell/dropout_4/Mul:z:0lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul_1{
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_5/Const?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul?
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_5/Shape?
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_5/random_uniform/RandomUniform?
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_5/GreaterEqual/y?
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_5/GreaterEqual?
lstm_cell/dropout_5/CastCast$lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Cast?
lstm_cell/dropout_5/Mul_1Mullstm_cell/dropout_5/Mul:z:0lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul_1{
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_6/Const?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul?
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_6/Shape?
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_6/random_uniform/RandomUniform?
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_6/GreaterEqual/y?
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_6/GreaterEqual?
lstm_cell/dropout_6/CastCast$lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Cast?
lstm_cell/dropout_6/Mul_1Mullstm_cell/dropout_6/Mul:z:0lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul_1{
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell/dropout_7/Const?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul?
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_7/Shape?
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?? 22
0lstm_cell/dropout_7/random_uniform/RandomUniform?
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell/dropout_7/GreaterEqual/y?
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_7/GreaterEqual?
lstm_cell/dropout_7/CastCast$lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Cast?
lstm_cell/dropout_7/Mul_1Mullstm_cell/dropout_7/Mul:z:0lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addv
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_1|
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2o
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4|
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_cell_split_readvariableop_lstm_lstm_cell_kernel4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_33336*
condR
while_cond_33335*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
*__inference_sequential_layer_call_fn_34276
embedding_input(
embedding_embeddings:
?G?)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
dense_kernel:@ 

dense_bias:  
dense_1_kernel: 
dense_1_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_embeddingslstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kerneldense_kernel
dense_biasdense_1_kerneldense_1_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_342182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_nameembedding_input
?
?
while_cond_35819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_35819___redundant_placeholder03
/while_while_cond_35819___redundant_placeholder13
/while_while_cond_35819___redundant_placeholder23
/while_while_cond_35819___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_36348

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
#__inference_signature_wrapper_34325
embedding_input(
embedding_embeddings:
?G?)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
dense_kernel:@ 

dense_bias:  
dense_1_kernel: 
dense_1_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_embeddingslstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kerneldense_kernel
dense_biasdense_1_kerneldense_1_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_315362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_nameembedding_input
?
?
while_cond_31671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_31671___redundant_placeholder03
/while_while_cond_31671___redundant_placeholder13
/while_while_cond_31671___redundant_placeholder23
/while_while_cond_31671___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_33015

inputsH
4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??C
4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?K
8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:???????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likex
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addv
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_1|
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2o
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4|
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_cell_split_readvariableop_lstm_lstm_cell_kernel4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_32881*
condR
while_cond_32880*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_35026

inputsC
/embedding_embedding_lookup_embedding_embeddings:
?G?M
9lstm_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??H
9lstm_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?P
=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@?:
(dense_matmul_readvariableop_dense_kernel:@ 5
'dense_biasadd_readvariableop_dense_bias: >
,dense_1_matmul_readvariableop_dense_1_kernel: 9
+dense_1_biasadd_readvariableop_dense_1_bias:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup?lstm/lstm_cell/ReadVariableOp?lstm/lstm_cell/ReadVariableOp_1?lstm/lstm_cell/ReadVariableOp_2?lstm/lstm_cell/ReadVariableOp_3?#lstm/lstm_cell/split/ReadVariableOp?%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/whiler
embedding/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding/Cast?
embedding/embedding_lookupResourceGather/embedding_embedding_lookup_embedding_embeddingsembedding/Cast:y:0*
Tindices0*B
_class8
64loc:@embedding/embedding_lookup/embedding/embeddings*-
_output_shapes
:???????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*B
_class8
64loc:@embedding/embedding_lookup/embedding/embeddings*-
_output_shapes
:???????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2'
%embedding/embedding_lookup/Identity_1v

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack?
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1?
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2?
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/mul/y?
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/packed/1?
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const?

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/mul/y?
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/Less/y?
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/packed/1?
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const?
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/perm?
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*-
_output_shapes
:???????????2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1?
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stack?
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1?
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2?
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1?
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm/TensorArrayV2/element_shape?
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2?
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensor?
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stack?
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1?
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2?
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm/strided_slice_2?
lstm/lstm_cell/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/ones_like/Shape?
lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/ones_like/Const?
lstm/lstm_cell/ones_likeFill'lstm/lstm_cell/ones_like/Shape:output:0'lstm/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/ones_like?
lstm/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm/lstm_cell/dropout/Const?
lstm/lstm_cell/dropout/MulMul!lstm/lstm_cell/ones_like:output:0%lstm/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout/Mul?
lstm/lstm_cell/dropout/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm/lstm_cell/dropout/Shape?
3lstm/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform%lstm/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm/lstm_cell/dropout/random_uniform/RandomUniform?
%lstm/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm/lstm_cell/dropout/GreaterEqual/y?
#lstm/lstm_cell/dropout/GreaterEqualGreaterEqual<lstm/lstm_cell/dropout/random_uniform/RandomUniform:output:0.lstm/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm/lstm_cell/dropout/GreaterEqual?
lstm/lstm_cell/dropout/CastCast'lstm/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout/Cast?
lstm/lstm_cell/dropout/Mul_1Mullstm/lstm_cell/dropout/Mul:z:0lstm/lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout/Mul_1?
lstm/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2 
lstm/lstm_cell/dropout_1/Const?
lstm/lstm_cell/dropout_1/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_1/Mul?
lstm/lstm_cell/dropout_1/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_1/Shape?
5lstm/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ɻ?27
5lstm/lstm_cell/dropout_1/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2)
'lstm/lstm_cell/dropout_1/GreaterEqual/y?
%lstm/lstm_cell/dropout_1/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_1/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/lstm_cell/dropout_1/GreaterEqual?
lstm/lstm_cell/dropout_1/CastCast)lstm/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_1/Cast?
lstm/lstm_cell/dropout_1/Mul_1Mul lstm/lstm_cell/dropout_1/Mul:z:0!lstm/lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2 
lstm/lstm_cell/dropout_1/Mul_1?
lstm/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2 
lstm/lstm_cell/dropout_2/Const?
lstm/lstm_cell/dropout_2/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_2/Mul?
lstm/lstm_cell/dropout_2/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_2/Shape?
5lstm/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_2/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2)
'lstm/lstm_cell/dropout_2/GreaterEqual/y?
%lstm/lstm_cell/dropout_2/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_2/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/lstm_cell/dropout_2/GreaterEqual?
lstm/lstm_cell/dropout_2/CastCast)lstm/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_2/Cast?
lstm/lstm_cell/dropout_2/Mul_1Mul lstm/lstm_cell/dropout_2/Mul:z:0!lstm/lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2 
lstm/lstm_cell/dropout_2/Mul_1?
lstm/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2 
lstm/lstm_cell/dropout_3/Const?
lstm/lstm_cell/dropout_3/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_3/Mul?
lstm/lstm_cell/dropout_3/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_3/Shape?
5lstm/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_3/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2)
'lstm/lstm_cell/dropout_3/GreaterEqual/y?
%lstm/lstm_cell/dropout_3/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_3/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/lstm_cell/dropout_3/GreaterEqual?
lstm/lstm_cell/dropout_3/CastCast)lstm/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_3/Cast?
lstm/lstm_cell/dropout_3/Mul_1Mul lstm/lstm_cell/dropout_3/Mul:z:0!lstm/lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2 
lstm/lstm_cell/dropout_3/Mul_1?
 lstm/lstm_cell/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell/ones_like_1/Shape?
 lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 lstm/lstm_cell/ones_like_1/Const?
lstm/lstm_cell/ones_like_1Fill)lstm/lstm_cell/ones_like_1/Shape:output:0)lstm/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/ones_like_1?
lstm/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2 
lstm/lstm_cell/dropout_4/Const?
lstm/lstm_cell/dropout_4/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_4/Mul?
lstm/lstm_cell/dropout_4/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_4/Shape?
5lstm/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_4/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2)
'lstm/lstm_cell/dropout_4/GreaterEqual/y?
%lstm/lstm_cell/dropout_4/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_4/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%lstm/lstm_cell/dropout_4/GreaterEqual?
lstm/lstm_cell/dropout_4/CastCast)lstm/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_4/Cast?
lstm/lstm_cell/dropout_4/Mul_1Mul lstm/lstm_cell/dropout_4/Mul:z:0!lstm/lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/dropout_4/Mul_1?
lstm/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2 
lstm/lstm_cell/dropout_5/Const?
lstm/lstm_cell/dropout_5/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_5/Mul?
lstm/lstm_cell/dropout_5/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_5/Shape?
5lstm/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2ڔ?27
5lstm/lstm_cell/dropout_5/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2)
'lstm/lstm_cell/dropout_5/GreaterEqual/y?
%lstm/lstm_cell/dropout_5/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_5/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%lstm/lstm_cell/dropout_5/GreaterEqual?
lstm/lstm_cell/dropout_5/CastCast)lstm/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_5/Cast?
lstm/lstm_cell/dropout_5/Mul_1Mul lstm/lstm_cell/dropout_5/Mul:z:0!lstm/lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/dropout_5/Mul_1?
lstm/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2 
lstm/lstm_cell/dropout_6/Const?
lstm/lstm_cell/dropout_6/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_6/Mul?
lstm/lstm_cell/dropout_6/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_6/Shape?
5lstm/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_6/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2)
'lstm/lstm_cell/dropout_6/GreaterEqual/y?
%lstm/lstm_cell/dropout_6/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_6/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%lstm/lstm_cell/dropout_6/GreaterEqual?
lstm/lstm_cell/dropout_6/CastCast)lstm/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_6/Cast?
lstm/lstm_cell/dropout_6/Mul_1Mul lstm/lstm_cell/dropout_6/Mul:z:0!lstm/lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/dropout_6/Mul_1?
lstm/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2 
lstm/lstm_cell/dropout_7/Const?
lstm/lstm_cell/dropout_7/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_7/Mul?
lstm/lstm_cell/dropout_7/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_7/Shape?
5lstm/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_7/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2)
'lstm/lstm_cell/dropout_7/GreaterEqual/y?
%lstm/lstm_cell/dropout_7/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_7/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%lstm/lstm_cell/dropout_7/GreaterEqual?
lstm/lstm_cell/dropout_7/CastCast)lstm/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_7/Cast?
lstm/lstm_cell/dropout_7/Mul_1Mul lstm/lstm_cell/dropout_7/Mul:z:0!lstm/lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/dropout_7/Mul_1?
lstm/lstm_cell/mulMullstm/strided_slice_2:output:0 lstm/lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul?
lstm/lstm_cell/mul_1Mullstm/strided_slice_2:output:0"lstm/lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_1?
lstm/lstm_cell/mul_2Mullstm/strided_slice_2:output:0"lstm/lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_2?
lstm/lstm_cell/mul_3Mullstm/strided_slice_2:output:0"lstm/lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_3?
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm/lstm_cell/split/split_dim?
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp9lstm_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02%
#lstm/lstm_cell/split/ReadVariableOp?
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm/lstm_cell/split?
lstm/lstm_cell/MatMulMatMullstm/lstm_cell/mul:z:0lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul?
lstm/lstm_cell/MatMul_1MatMullstm/lstm_cell/mul_1:z:0lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_1?
lstm/lstm_cell/MatMul_2MatMullstm/lstm_cell/mul_2:z:0lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_2?
lstm/lstm_cell/MatMul_3MatMullstm/lstm_cell/mul_3:z:0lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_3?
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 lstm/lstm_cell/split_1/split_dim?
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp9lstm_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02'
%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm/lstm_cell/split_1?
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd?
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_1?
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_2?
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_3?
lstm/lstm_cell/mul_4Mullstm/zeros:output:0"lstm/lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_4?
lstm/lstm_cell/mul_5Mullstm/zeros:output:0"lstm/lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_5?
lstm/lstm_cell/mul_6Mullstm/zeros:output:0"lstm/lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_6?
lstm/lstm_cell/mul_7Mullstm/zeros:output:0"lstm/lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_7?
lstm/lstm_cell/ReadVariableOpReadVariableOp=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm/lstm_cell/ReadVariableOp?
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm/lstm_cell/strided_slice/stack?
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm/lstm_cell/strided_slice/stack_1?
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm/lstm_cell/strided_slice/stack_2?
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm/lstm_cell/strided_slice?
lstm/lstm_cell/MatMul_4MatMullstm/lstm_cell/mul_4:z:0%lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_4?
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add?
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Sigmoid?
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_1?
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm/lstm_cell/strided_slice_1/stack?
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&lstm/lstm_cell/strided_slice_1/stack_1?
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_1/stack_2?
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_1?
lstm/lstm_cell/MatMul_5MatMullstm/lstm_cell/mul_5:z:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_5?
lstm/lstm_cell/add_1AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_1?
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Sigmoid_1?
lstm/lstm_cell/mul_8Mullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_8?
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_2?
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice_2/stack?
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&lstm/lstm_cell/strided_slice_2/stack_1?
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_2/stack_2?
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_2?
lstm/lstm_cell/MatMul_6MatMullstm/lstm_cell/mul_6:z:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_6?
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_2~
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Tanh?
lstm/lstm_cell/mul_9Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_9?
lstm/lstm_cell/add_3AddV2lstm/lstm_cell/mul_8:z:0lstm/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_3?
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_3?
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice_3/stack?
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm/lstm_cell/strided_slice_3/stack_1?
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_3/stack_2?
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_3?
lstm/lstm_cell/MatMul_7MatMullstm/lstm_cell/mul_7:z:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_7?
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_4?
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Sigmoid_2?
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Tanh_1?
lstm/lstm_cell/mul_10Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_10?
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2$
"lstm/TensorArrayV2_1/element_shape?
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/time?
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counter?

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:09lstm_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel9lstm_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*!
bodyR
lstm_while_body_34807*!
condR
lstm_while_cond_34806*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2

lstm/while?
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5lstm/TensorArrayV2Stack/TensorListStack/element_shape?
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????@*
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStack?
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm/strided_slice_3/stack?
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1?
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2?
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm/strided_slice_3?
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/perm?
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????@2
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtimes
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const?
dropout/dropout/MulMullstm/strided_slice_3:output:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/dropout/Mul{
dropout/dropout/ShapeShapelstm/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/dropout/Mul_1?
dense/MatMul/ReadVariableOpReadVariableOp(dense_matmul_readvariableop_dense_kernel*
_output_shapes

:@ *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp'dense_biasadd_readvariableop_dense_bias*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp,dense_1_matmul_readvariableop_dense_1_kernel*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp+dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_34621

inputsC
/embedding_embedding_lookup_embedding_embeddings:
?G?M
9lstm_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??H
9lstm_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?P
=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@?:
(dense_matmul_readvariableop_dense_kernel:@ 5
'dense_biasadd_readvariableop_dense_bias: >
,dense_1_matmul_readvariableop_dense_1_kernel: 9
+dense_1_biasadd_readvariableop_dense_1_bias:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup?lstm/lstm_cell/ReadVariableOp?lstm/lstm_cell/ReadVariableOp_1?lstm/lstm_cell/ReadVariableOp_2?lstm/lstm_cell/ReadVariableOp_3?#lstm/lstm_cell/split/ReadVariableOp?%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/whiler
embedding/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding/Cast?
embedding/embedding_lookupResourceGather/embedding_embedding_lookup_embedding_embeddingsembedding/Cast:y:0*
Tindices0*B
_class8
64loc:@embedding/embedding_lookup/embedding/embeddings*-
_output_shapes
:???????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*B
_class8
64loc:@embedding/embedding_lookup/embedding/embeddings*-
_output_shapes
:???????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2'
%embedding/embedding_lookup/Identity_1v

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack?
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1?
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2?
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/mul/y?
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/packed/1?
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const?

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/mul/y?
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/Less/y?
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/packed/1?
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const?
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/perm?
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*-
_output_shapes
:???????????2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1?
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stack?
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1?
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2?
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1?
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm/TensorArrayV2/element_shape?
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2?
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensor?
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stack?
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1?
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2?
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm/strided_slice_2?
lstm/lstm_cell/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/ones_like/Shape?
lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/ones_like/Const?
lstm/lstm_cell/ones_likeFill'lstm/lstm_cell/ones_like/Shape:output:0'lstm/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/ones_like?
 lstm/lstm_cell/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell/ones_like_1/Shape?
 lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 lstm/lstm_cell/ones_like_1/Const?
lstm/lstm_cell/ones_like_1Fill)lstm/lstm_cell/ones_like_1/Shape:output:0)lstm/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/ones_like_1?
lstm/lstm_cell/mulMullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul?
lstm/lstm_cell/mul_1Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_1?
lstm/lstm_cell/mul_2Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_2?
lstm/lstm_cell/mul_3Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_3?
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm/lstm_cell/split/split_dim?
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp9lstm_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02%
#lstm/lstm_cell/split/ReadVariableOp?
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm/lstm_cell/split?
lstm/lstm_cell/MatMulMatMullstm/lstm_cell/mul:z:0lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul?
lstm/lstm_cell/MatMul_1MatMullstm/lstm_cell/mul_1:z:0lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_1?
lstm/lstm_cell/MatMul_2MatMullstm/lstm_cell/mul_2:z:0lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_2?
lstm/lstm_cell/MatMul_3MatMullstm/lstm_cell/mul_3:z:0lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_3?
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 lstm/lstm_cell/split_1/split_dim?
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp9lstm_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02'
%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm/lstm_cell/split_1?
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd?
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_1?
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_2?
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_3?
lstm/lstm_cell/mul_4Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_4?
lstm/lstm_cell/mul_5Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_5?
lstm/lstm_cell/mul_6Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_6?
lstm/lstm_cell/mul_7Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_7?
lstm/lstm_cell/ReadVariableOpReadVariableOp=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm/lstm_cell/ReadVariableOp?
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm/lstm_cell/strided_slice/stack?
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm/lstm_cell/strided_slice/stack_1?
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm/lstm_cell/strided_slice/stack_2?
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm/lstm_cell/strided_slice?
lstm/lstm_cell/MatMul_4MatMullstm/lstm_cell/mul_4:z:0%lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_4?
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add?
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Sigmoid?
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_1?
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm/lstm_cell/strided_slice_1/stack?
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&lstm/lstm_cell/strided_slice_1/stack_1?
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_1/stack_2?
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_1?
lstm/lstm_cell/MatMul_5MatMullstm/lstm_cell/mul_5:z:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_5?
lstm/lstm_cell/add_1AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_1?
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Sigmoid_1?
lstm/lstm_cell/mul_8Mullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_8?
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_2?
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice_2/stack?
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&lstm/lstm_cell/strided_slice_2/stack_1?
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_2/stack_2?
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_2?
lstm/lstm_cell/MatMul_6MatMullstm/lstm_cell/mul_6:z:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_6?
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_2~
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Tanh?
lstm/lstm_cell/mul_9Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_9?
lstm/lstm_cell/add_3AddV2lstm/lstm_cell/mul_8:z:0lstm/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_3?
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_3?
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice_3/stack?
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm/lstm_cell/strided_slice_3/stack_1?
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_3/stack_2?
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_3?
lstm/lstm_cell/MatMul_7MatMullstm/lstm_cell/mul_7:z:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_7?
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_4?
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Sigmoid_2?
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Tanh_1?
lstm/lstm_cell/mul_10Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_10?
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2$
"lstm/TensorArrayV2_1/element_shape?
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/time?
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counter?

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:09lstm_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel9lstm_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias=lstm_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*!
bodyR
lstm_while_body_34473*!
condR
lstm_while_cond_34472*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2

lstm/while?
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5lstm/TensorArrayV2Stack/TensorListStack/element_shape?
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????@*
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStack?
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm/strided_slice_3/stack?
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1?
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2?
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm/strided_slice_3?
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/perm?
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????@2
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime?
dropout/IdentityIdentitylstm/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
dropout/Identity?
dense/MatMul/ReadVariableOpReadVariableOp(dense_matmul_readvariableop_dense_kernel*
_output_shapes

:@ *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp'dense_biasadd_readvariableop_dense_bias*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp,dense_1_matmul_readvariableop_dense_1_kernel*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp+dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAdd?
IdentityIdentitydense_1/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_embedding_layer_call_fn_35032

inputs(
embedding_embeddings:
?G?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsembedding_embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_327622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_35504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_35504___redundant_placeholder03
/while_while_cond_35504___redundant_placeholder13
/while_while_cond_35504___redundant_placeholder23
/while_while_cond_35504___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?

?
*__inference_sequential_layer_call_fn_33068
embedding_input(
embedding_embeddings:
?G?)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
dense_kernel:@ 

dense_bias:  
dense_1_kernel: 
dense_1_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_embeddingslstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kerneldense_kernel
dense_biasdense_1_kerneldense_1_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_330572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_nameembedding_input
??
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_31909

inputs

states
states_1>
*split_readvariableop_lstm_lstm_cell_kernel:
??9
*split_1_readvariableop_lstm_lstm_cell_bias:	?A
.readvariableop_lstm_lstm_cell_recurrent_kernel:	@?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const?
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ף2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??Y2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_6/Const?
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shape?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_6/GreaterEqual/y?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_6/GreaterEqual?
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_6/Cast?
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_7/Const?
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shape?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2ښ?2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_7/GreaterEqual/y?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_7/GreaterEqual?
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_7/Cast?
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOp*split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????@2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????@2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????@2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOp*split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3d
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_4d
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_5d
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_6d
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_7?
ReadVariableOpReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@2	
Sigmoid?
ReadVariableOp_1ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mul_8?
ReadVariableOp_2ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:?????????@2
add_3?
ReadVariableOp_3ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????@2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?4
?

__inference__traced_save_36734
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop4
0savev2_training_rmsprop_iter_read_readvariableop	5
1savev2_training_rmsprop_decay_read_readvariableop=
9savev2_training_rmsprop_learning_rate_read_readvariableop8
4savev2_training_rmsprop_momentum_read_readvariableop3
/savev2_training_rmsprop_rho_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop@
<savev2_training_rmsprop_dense_kernel_rms_read_readvariableop>
:savev2_training_rmsprop_dense_bias_rms_read_readvariableopB
>savev2_training_rmsprop_dense_1_kernel_rms_read_readvariableop@
<savev2_training_rmsprop_dense_1_bias_rms_read_readvariableopI
Esavev2_training_rmsprop_lstm_lstm_cell_kernel_rms_read_readvariableopS
Osavev2_training_rmsprop_lstm_lstm_cell_recurrent_kernel_rms_read_readvariableopG
Csavev2_training_rmsprop_lstm_lstm_cell_bias_rms_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop0savev2_training_rmsprop_iter_read_readvariableop1savev2_training_rmsprop_decay_read_readvariableop9savev2_training_rmsprop_learning_rate_read_readvariableop4savev2_training_rmsprop_momentum_read_readvariableop/savev2_training_rmsprop_rho_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop<savev2_training_rmsprop_dense_kernel_rms_read_readvariableop:savev2_training_rmsprop_dense_bias_rms_read_readvariableop>savev2_training_rmsprop_dense_1_kernel_rms_read_readvariableop<savev2_training_rmsprop_dense_1_bias_rms_read_readvariableopEsavev2_training_rmsprop_lstm_lstm_cell_kernel_rms_read_readvariableopOsavev2_training_rmsprop_lstm_lstm_cell_recurrent_kernel_rms_read_readvariableopCsavev2_training_rmsprop_lstm_lstm_cell_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *#
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
?G?:@ : : :: : : : : :
??:	@?:?:@ : : ::
??:	@?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?G?:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :&"
 
_output_shapes
:
??:%!

_output_shapes
:	@?:!

_output_shapes	
:?:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::&"
 
_output_shapes
:
??:%!

_output_shapes
:	@?:!

_output_shapes	
:?:

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_34293
embedding_input2
embedding_embedding_embeddings:
?G?.
lstm_lstm_lstm_cell_kernel:
??'
lstm_lstm_lstm_cell_bias:	?7
$lstm_lstm_lstm_cell_recurrent_kernel:	@?$
dense_dense_kernel:@ 
dense_dense_bias: (
dense_1_dense_1_kernel: "
dense_1_dense_1_bias:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_embedding_embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_327622#
!embedding/StatefulPartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0lstm_lstm_lstm_cell_kernellstm_lstm_lstm_cell_bias$lstm_lstm_lstm_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_330152
lstm/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_330252
dropout/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_330382
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_330522!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_nameembedding_input
?

?
@__inference_dense_layer_call_and_return_conditional_losses_36378

inputs4
"matmul_readvariableop_dense_kernel:@ /
!biasadd_readvariableop_dense_bias: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp"matmul_readvariableop_dense_kernel*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp!biasadd_readvariableop_dense_bias*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
`
'__inference_dropout_layer_call_fn_36343

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_331252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
lstm_while_body_34807&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0U
Alstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0:
??P
Alstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0:	?X
Elstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	@?
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorS
?lstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??N
?lstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?V
Clstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@???#lstm/while/lstm_cell/ReadVariableOp?%lstm/while/lstm_cell/ReadVariableOp_1?%lstm/while/lstm_cell/ReadVariableOp_2?%lstm/while/lstm_cell/ReadVariableOp_3?)lstm/while/lstm_cell/split/ReadVariableOp?+lstm/while/lstm_cell/split_1/ReadVariableOp?
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItem?
$lstm/while/lstm_cell/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/ones_like/Shape?
$lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/ones_like/Const?
lstm/while/lstm_cell/ones_likeFill-lstm/while/lstm_cell/ones_like/Shape:output:0-lstm/while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/ones_like?
"lstm/while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"lstm/while/lstm_cell/dropout/Const?
 lstm/while/lstm_cell/dropout/MulMul'lstm/while/lstm_cell/ones_like:output:0+lstm/while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell/dropout/Mul?
"lstm/while/lstm_cell/dropout/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm/while/lstm_cell/dropout/Shape?
9lstm/while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform+lstm/while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9lstm/while/lstm_cell/dropout/random_uniform/RandomUniform?
+lstm/while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm/while/lstm_cell/dropout/GreaterEqual/y?
)lstm/while/lstm_cell/dropout/GreaterEqualGreaterEqualBlstm/while/lstm_cell/dropout/random_uniform/RandomUniform:output:04lstm/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)lstm/while/lstm_cell/dropout/GreaterEqual?
!lstm/while/lstm_cell/dropout/CastCast-lstm/while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell/dropout/Cast?
"lstm/while/lstm_cell/dropout/Mul_1Mul$lstm/while/lstm_cell/dropout/Mul:z:0%lstm/while/lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout/Mul_1?
$lstm/while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm/while/lstm_cell/dropout_1/Const?
"lstm/while/lstm_cell/dropout_1/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout_1/Mul?
$lstm/while/lstm_cell/dropout_1/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_1/Shape?
;lstm/while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?Ŕ2=
;lstm/while/lstm_cell/dropout_1/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm/while/lstm_cell/dropout_1/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_1/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+lstm/while/lstm_cell/dropout_1/GreaterEqual?
#lstm/while/lstm_cell/dropout_1/CastCast/lstm/while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell/dropout_1/Cast?
$lstm/while/lstm_cell/dropout_1/Mul_1Mul&lstm/while/lstm_cell/dropout_1/Mul:z:0'lstm/while/lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell/dropout_1/Mul_1?
$lstm/while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm/while/lstm_cell/dropout_2/Const?
"lstm/while/lstm_cell/dropout_2/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout_2/Mul?
$lstm/while/lstm_cell/dropout_2/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_2/Shape?
;lstm/while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??l2=
;lstm/while/lstm_cell/dropout_2/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm/while/lstm_cell/dropout_2/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_2/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+lstm/while/lstm_cell/dropout_2/GreaterEqual?
#lstm/while/lstm_cell/dropout_2/CastCast/lstm/while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell/dropout_2/Cast?
$lstm/while/lstm_cell/dropout_2/Mul_1Mul&lstm/while/lstm_cell/dropout_2/Mul:z:0'lstm/while/lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell/dropout_2/Mul_1?
$lstm/while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm/while/lstm_cell/dropout_3/Const?
"lstm/while/lstm_cell/dropout_3/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout_3/Mul?
$lstm/while/lstm_cell/dropout_3/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_3/Shape?
;lstm/while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??[2=
;lstm/while/lstm_cell/dropout_3/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm/while/lstm_cell/dropout_3/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_3/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+lstm/while/lstm_cell/dropout_3/GreaterEqual?
#lstm/while/lstm_cell/dropout_3/CastCast/lstm/while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell/dropout_3/Cast?
$lstm/while/lstm_cell/dropout_3/Mul_1Mul&lstm/while/lstm_cell/dropout_3/Mul:z:0'lstm/while/lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell/dropout_3/Mul_1?
&lstm/while/lstm_cell/ones_like_1/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell/ones_like_1/Shape?
&lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&lstm/while/lstm_cell/ones_like_1/Const?
 lstm/while/lstm_cell/ones_like_1Fill/lstm/while/lstm_cell/ones_like_1/Shape:output:0/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm/while/lstm_cell/ones_like_1?
$lstm/while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm/while/lstm_cell/dropout_4/Const?
"lstm/while/lstm_cell/dropout_4/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm/while/lstm_cell/dropout_4/Mul?
$lstm/while/lstm_cell/dropout_4/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_4/Shape?
;lstm/while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2=
;lstm/while/lstm_cell/dropout_4/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm/while/lstm_cell/dropout_4/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_4/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2-
+lstm/while/lstm_cell/dropout_4/GreaterEqual?
#lstm/while/lstm_cell/dropout_4/CastCast/lstm/while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2%
#lstm/while/lstm_cell/dropout_4/Cast?
$lstm/while/lstm_cell/dropout_4/Mul_1Mul&lstm/while/lstm_cell/dropout_4/Mul:z:0'lstm/while/lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/dropout_4/Mul_1?
$lstm/while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm/while/lstm_cell/dropout_5/Const?
"lstm/while/lstm_cell/dropout_5/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm/while/lstm_cell/dropout_5/Mul?
$lstm/while/lstm_cell/dropout_5/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_5/Shape?
;lstm/while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?ޖ2=
;lstm/while/lstm_cell/dropout_5/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm/while/lstm_cell/dropout_5/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_5/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2-
+lstm/while/lstm_cell/dropout_5/GreaterEqual?
#lstm/while/lstm_cell/dropout_5/CastCast/lstm/while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2%
#lstm/while/lstm_cell/dropout_5/Cast?
$lstm/while/lstm_cell/dropout_5/Mul_1Mul&lstm/while/lstm_cell/dropout_5/Mul:z:0'lstm/while/lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/dropout_5/Mul_1?
$lstm/while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm/while/lstm_cell/dropout_6/Const?
"lstm/while/lstm_cell/dropout_6/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm/while/lstm_cell/dropout_6/Mul?
$lstm/while/lstm_cell/dropout_6/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_6/Shape?
;lstm/while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??N2=
;lstm/while/lstm_cell/dropout_6/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm/while/lstm_cell/dropout_6/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_6/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2-
+lstm/while/lstm_cell/dropout_6/GreaterEqual?
#lstm/while/lstm_cell/dropout_6/CastCast/lstm/while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2%
#lstm/while/lstm_cell/dropout_6/Cast?
$lstm/while/lstm_cell/dropout_6/Mul_1Mul&lstm/while/lstm_cell/dropout_6/Mul:z:0'lstm/while/lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/dropout_6/Mul_1?
$lstm/while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm/while/lstm_cell/dropout_7/Const?
"lstm/while/lstm_cell/dropout_7/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm/while/lstm_cell/dropout_7/Mul?
$lstm/while/lstm_cell/dropout_7/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_7/Shape?
;lstm/while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??P2=
;lstm/while/lstm_cell/dropout_7/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm/while/lstm_cell/dropout_7/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_7/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2-
+lstm/while/lstm_cell/dropout_7/GreaterEqual?
#lstm/while/lstm_cell/dropout_7/CastCast/lstm/while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2%
#lstm/while/lstm_cell/dropout_7/Cast?
$lstm/while/lstm_cell/dropout_7/Mul_1Mul&lstm/while/lstm_cell/dropout_7/Mul:z:0'lstm/while/lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/dropout_7/Mul_1?
lstm/while/lstm_cell/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0&lstm/while/lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul?
lstm/while/lstm_cell/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm/while/lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_1?
lstm/while/lstm_cell/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm/while/lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_2?
lstm/while/lstm_cell/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm/while/lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_3?
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm/while/lstm_cell/split/split_dim?
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOpAlstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0* 
_output_shapes
:
??*
dtype02+
)lstm/while/lstm_cell/split/ReadVariableOp?
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm/while/lstm_cell/split?
lstm/while/lstm_cell/MatMulMatMullstm/while/lstm_cell/mul:z:0#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul?
lstm/while/lstm_cell/MatMul_1MatMullstm/while/lstm_cell/mul_1:z:0#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_1?
lstm/while/lstm_cell/MatMul_2MatMullstm/while/lstm_cell/mul_2:z:0#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_2?
lstm/while/lstm_cell/MatMul_3MatMullstm/while/lstm_cell/mul_3:z:0#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_3?
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm/while/lstm_cell/split_1/split_dim?
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpAlstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:?*
dtype02-
+lstm/while/lstm_cell/split_1/ReadVariableOp?
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm/while/lstm_cell/split_1?
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/BiasAdd?
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_1?
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_2?
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_3?
lstm/while/lstm_cell/mul_4Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_4?
lstm/while/lstm_cell/mul_5Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_5?
lstm/while/lstm_cell/mul_6Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_6?
lstm/while/lstm_cell/mul_7Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_7?
#lstm/while/lstm_cell/ReadVariableOpReadVariableOpElstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02%
#lstm/while/lstm_cell/ReadVariableOp?
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm/while/lstm_cell/strided_slice/stack?
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm/while/lstm_cell/strided_slice/stack_1?
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm/while/lstm_cell/strided_slice/stack_2?
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm/while/lstm_cell/strided_slice?
lstm/while/lstm_cell/MatMul_4MatMullstm/while/lstm_cell/mul_4:z:0+lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_4?
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add?
lstm/while/lstm_cell/SigmoidSigmoidlstm/while/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Sigmoid?
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOpElstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_1?
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm/while/lstm_cell/strided_slice_1/stack?
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2.
,lstm/while/lstm_cell/strided_slice_1/stack_1?
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_1/stack_2?
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_1?
lstm/while/lstm_cell/MatMul_5MatMullstm/while/lstm_cell/mul_5:z:0-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_5?
lstm/while/lstm_cell/add_1AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_1?
lstm/while/lstm_cell/Sigmoid_1Sigmoidlstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/Sigmoid_1?
lstm/while/lstm_cell/mul_8Mul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_8?
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOpElstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_2?
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice_2/stack?
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2.
,lstm/while/lstm_cell/strided_slice_2/stack_1?
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_2/stack_2?
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_2?
lstm/while/lstm_cell/MatMul_6MatMullstm/while/lstm_cell/mul_6:z:0-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_6?
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_2?
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Tanh?
lstm/while/lstm_cell/mul_9Mul lstm/while/lstm_cell/Sigmoid:y:0lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_9?
lstm/while/lstm_cell/add_3AddV2lstm/while/lstm_cell/mul_8:z:0lstm/while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_3?
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOpElstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_3?
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice_3/stack?
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm/while/lstm_cell/strided_slice_3/stack_1?
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_3/stack_2?
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_3?
lstm/while/lstm_cell/MatMul_7MatMullstm/while/lstm_cell/mul_7:z:0-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_7?
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_4?
lstm/while/lstm_cell/Sigmoid_2Sigmoidlstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/Sigmoid_2?
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Tanh_1?
lstm/while/lstm_cell/mul_10Mul"lstm/while/lstm_cell/Sigmoid_2:y:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_10?
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/y?
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1?
lstm/while/IdentityIdentitylstm/while/add_1:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity?
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1?
lstm/while/Identity_2Identitylstm/while/add:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2?
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3?
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_10:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm/while/Identity_4?
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_3:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm/while/Identity_5"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"?
Clstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernelElstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0"?
?lstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_biasAlstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0"?
?lstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernelAlstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_34310
embedding_input2
embedding_embedding_embeddings:
?G?.
lstm_lstm_lstm_cell_kernel:
??'
lstm_lstm_lstm_cell_bias:	?7
$lstm_lstm_lstm_cell_recurrent_kernel:	@?$
dense_dense_kernel:@ 
dense_dense_bias: (
dense_1_dense_1_kernel: "
dense_1_dense_1_bias:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_embedding_embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_327622#
!embedding/StatefulPartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0lstm_lstm_lstm_cell_kernellstm_lstm_lstm_cell_bias$lstm_lstm_lstm_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_335342
lstm/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_331252!
dropout/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_330382
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_330522!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_nameembedding_input
?	
?
D__inference_embedding_layer_call_and_return_conditional_losses_35041

inputs9
%embedding_lookup_embedding_embeddings:
?G?
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
Cast?
embedding_lookupResourceGather%embedding_lookup_embedding_embeddingsCast:y:0*
Tindices0*8
_class.
,*loc:@embedding_lookup/embedding/embeddings*-
_output_shapes
:???????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_lookup/embedding/embeddings*-
_output_shapes
:???????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_cell_layer_call_fn_36409

inputs
states_0
states_1)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kernel*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_316612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?	
?
D__inference_embedding_layer_call_and_return_conditional_losses_32762

inputs9
%embedding_lookup_embedding_embeddings:
?G?
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
Cast?
embedding_lookupResourceGather%embedding_lookup_embedding_embeddingsCast:y:0*
Tindices0*8
_class.
,*loc:@embedding_lookup/embedding/embeddings*-
_output_shapes
:???????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_lookup/embedding/embeddings*-
_output_shapes
:???????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
ל
?
lstm_while_body_34473&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0U
Alstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0:
??P
Alstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0:	?X
Elstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	@?
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorS
?lstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??N
?lstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?V
Clstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@???#lstm/while/lstm_cell/ReadVariableOp?%lstm/while/lstm_cell/ReadVariableOp_1?%lstm/while/lstm_cell/ReadVariableOp_2?%lstm/while/lstm_cell/ReadVariableOp_3?)lstm/while/lstm_cell/split/ReadVariableOp?+lstm/while/lstm_cell/split_1/ReadVariableOp?
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItem?
$lstm/while/lstm_cell/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/ones_like/Shape?
$lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/ones_like/Const?
lstm/while/lstm_cell/ones_likeFill-lstm/while/lstm_cell/ones_like/Shape:output:0-lstm/while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/ones_like?
&lstm/while/lstm_cell/ones_like_1/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell/ones_like_1/Shape?
&lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&lstm/while/lstm_cell/ones_like_1/Const?
 lstm/while/lstm_cell/ones_like_1Fill/lstm/while/lstm_cell/ones_like_1/Shape:output:0/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm/while/lstm_cell/ones_like_1?
lstm/while/lstm_cell/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul?
lstm/while/lstm_cell/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_1?
lstm/while/lstm_cell/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_2?
lstm/while/lstm_cell/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_3?
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm/while/lstm_cell/split/split_dim?
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOpAlstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0* 
_output_shapes
:
??*
dtype02+
)lstm/while/lstm_cell/split/ReadVariableOp?
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm/while/lstm_cell/split?
lstm/while/lstm_cell/MatMulMatMullstm/while/lstm_cell/mul:z:0#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul?
lstm/while/lstm_cell/MatMul_1MatMullstm/while/lstm_cell/mul_1:z:0#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_1?
lstm/while/lstm_cell/MatMul_2MatMullstm/while/lstm_cell/mul_2:z:0#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_2?
lstm/while/lstm_cell/MatMul_3MatMullstm/while/lstm_cell/mul_3:z:0#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_3?
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm/while/lstm_cell/split_1/split_dim?
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpAlstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:?*
dtype02-
+lstm/while/lstm_cell/split_1/ReadVariableOp?
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm/while/lstm_cell/split_1?
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/BiasAdd?
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_1?
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_2?
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_3?
lstm/while/lstm_cell/mul_4Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_4?
lstm/while/lstm_cell/mul_5Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_5?
lstm/while/lstm_cell/mul_6Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_6?
lstm/while/lstm_cell/mul_7Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_7?
#lstm/while/lstm_cell/ReadVariableOpReadVariableOpElstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02%
#lstm/while/lstm_cell/ReadVariableOp?
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm/while/lstm_cell/strided_slice/stack?
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm/while/lstm_cell/strided_slice/stack_1?
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm/while/lstm_cell/strided_slice/stack_2?
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm/while/lstm_cell/strided_slice?
lstm/while/lstm_cell/MatMul_4MatMullstm/while/lstm_cell/mul_4:z:0+lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_4?
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add?
lstm/while/lstm_cell/SigmoidSigmoidlstm/while/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Sigmoid?
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOpElstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_1?
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm/while/lstm_cell/strided_slice_1/stack?
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2.
,lstm/while/lstm_cell/strided_slice_1/stack_1?
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_1/stack_2?
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_1?
lstm/while/lstm_cell/MatMul_5MatMullstm/while/lstm_cell/mul_5:z:0-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_5?
lstm/while/lstm_cell/add_1AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_1?
lstm/while/lstm_cell/Sigmoid_1Sigmoidlstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/Sigmoid_1?
lstm/while/lstm_cell/mul_8Mul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_8?
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOpElstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_2?
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice_2/stack?
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2.
,lstm/while/lstm_cell/strided_slice_2/stack_1?
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_2/stack_2?
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_2?
lstm/while/lstm_cell/MatMul_6MatMullstm/while/lstm_cell/mul_6:z:0-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_6?
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_2?
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Tanh?
lstm/while/lstm_cell/mul_9Mul lstm/while/lstm_cell/Sigmoid:y:0lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_9?
lstm/while/lstm_cell/add_3AddV2lstm/while/lstm_cell/mul_8:z:0lstm/while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_3?
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOpElstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_3?
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice_3/stack?
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm/while/lstm_cell/strided_slice_3/stack_1?
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_3/stack_2?
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_3?
lstm/while/lstm_cell/MatMul_7MatMullstm/while/lstm_cell/mul_7:z:0-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_7?
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_4?
lstm/while/lstm_cell/Sigmoid_2Sigmoidlstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/Sigmoid_2?
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Tanh_1?
lstm/while/lstm_cell/mul_10Mul"lstm/while/lstm_cell/Sigmoid_2:y:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_10?
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/y?
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1?
lstm/while/IdentityIdentitylstm/while/add_1:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity?
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1?
lstm/while/Identity_2Identitylstm/while/add:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2?
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3?
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_10:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm/while/Identity_4?
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_3:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm/while/Identity_5"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"?
Clstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernelElstm_while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0"?
?lstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_biasAlstm_while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0"?
?lstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernelAlstm_while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?F
?
?__inference_lstm_layer_call_and_return_conditional_losses_31738

inputs3
lstm_cell_lstm_lstm_cell_kernel:
??,
lstm_cell_lstm_lstm_cell_bias:	?<
)lstm_cell_lstm_lstm_cell_recurrent_kernel:	@?
identity??!lstm_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_lstm_lstm_cell_kernellstm_cell_lstm_lstm_cell_bias)lstm_cell_lstm_lstm_cell_recurrent_kernel*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_316612#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_lstm_lstm_cell_kernellstm_cell_lstm_lstm_cell_bias)lstm_cell_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_31672*
condR
while_cond_31671*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_35324
inputs_0H
4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??C
4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?K
8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likex
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addv
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_1|
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2o
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4|
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_cell_split_readvariableop_lstm_lstm_cell_kernel4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35190*
condR
while_cond_35189*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*:
_input_shapes)
':???????????????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
'__inference_dense_1_layer_call_fn_36385

inputs 
dense_1_kernel: 
dense_1_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_kerneldense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_330522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_35954

inputsH
4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??C
4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?K
8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:???????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likex
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp4lstm_cell_split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addv
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_1|
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2o
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4|
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Sigmoid_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_cell_split_readvariableop_lstm_lstm_cell_kernel4lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias8lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35820*
condR
while_cond_35819*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:???????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
lstm_while_cond_34806&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_34806___redundant_placeholder0=
9lstm_while_lstm_while_cond_34806___redundant_placeholder1=
9lstm_while_lstm_while_cond_34806___redundant_placeholder2=
9lstm_while_lstm_while_cond_34806___redundant_placeholder3
lstm_while_identity
?
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?	
?
lstm_while_cond_34472&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_34472___redundant_placeholder0=
9lstm_while_lstm_while_cond_34472___redundant_placeholder1=
9lstm_while_lstm_while_cond_34472___redundant_placeholder2=
9lstm_while_lstm_while_cond_34472___redundant_placeholder3
lstm_while_identity
?
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?

?
*__inference_sequential_layer_call_fn_34338

inputs(
embedding_embeddings:
?G?)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
dense_kernel:@ 

dense_bias:  
dense_1_kernel: 
dense_1_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsembedding_embeddingslstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kerneldense_kernel
dense_biasdense_1_kerneldense_1_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_330572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_lstm_layer_call_fn_35073

inputs)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_335342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:???????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?'
?
while_body_32206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
'while_lstm_cell_lstm_lstm_cell_kernel_0:
??4
%while_lstm_cell_lstm_lstm_cell_bias_0:	?D
1while_lstm_cell_lstm_lstm_cell_recurrent_kernel_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
%while_lstm_cell_lstm_lstm_cell_kernel:
??2
#while_lstm_cell_lstm_lstm_cell_bias:	?B
/while_lstm_cell_lstm_lstm_cell_recurrent_kernel:	@???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3'while_lstm_cell_lstm_lstm_cell_kernel_0%while_lstm_cell_lstm_lstm_cell_bias_01while_lstm_cell_lstm_lstm_cell_recurrent_kernel_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_319092)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"L
#while_lstm_cell_lstm_lstm_cell_bias%while_lstm_cell_lstm_lstm_cell_bias_0"P
%while_lstm_cell_lstm_lstm_cell_kernel'while_lstm_cell_lstm_lstm_cell_kernel_0"d
/while_lstm_cell_lstm_lstm_cell_recurrent_kernel1while_lstm_cell_lstm_lstm_cell_recurrent_kernel_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_36395

inputs6
$matmul_readvariableop_dense_1_kernel: 1
#biasadd_readvariableop_dense_1_bias:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_1_kernel*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
*__inference_sequential_layer_call_fn_34351

inputs(
embedding_embeddings:
?G?)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
dense_kernel:@ 

dense_bias:  
dense_1_kernel: 
dense_1_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsembedding_embeddingslstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kerneldense_kernel
dense_biasdense_1_kerneldense_1_bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_342182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?'
?
while_body_31672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
'while_lstm_cell_lstm_lstm_cell_kernel_0:
??4
%while_lstm_cell_lstm_lstm_cell_bias_0:	?D
1while_lstm_cell_lstm_lstm_cell_recurrent_kernel_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
%while_lstm_cell_lstm_lstm_cell_kernel:
??2
#while_lstm_cell_lstm_lstm_cell_bias:	?B
/while_lstm_cell_lstm_lstm_cell_recurrent_kernel:	@???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3'while_lstm_cell_lstm_lstm_cell_kernel_0%while_lstm_cell_lstm_lstm_cell_bias_01while_lstm_cell_lstm_lstm_cell_recurrent_kernel_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_316612)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"L
#while_lstm_cell_lstm_lstm_cell_bias%while_lstm_cell_lstm_lstm_cell_bias_0"P
%while_lstm_cell_lstm_lstm_cell_kernel'while_lstm_cell_lstm_lstm_cell_kernel_0"d
/while_lstm_cell_lstm_lstm_cell_recurrent_kernel1while_lstm_cell_lstm_lstm_cell_recurrent_kernel_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_35189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_35189___redundant_placeholder03
/while_while_cond_35189___redundant_placeholder13
/while_while_cond_35189___redundant_placeholder23
/while_while_cond_35189___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
$__inference_lstm_layer_call_fn_35057
inputs_0)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_322722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?

a
B__inference_dropout_layer_call_and_return_conditional_losses_36360

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
 sequential_lstm_while_cond_31387<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1S
Osequential_lstm_while_sequential_lstm_while_cond_31387___redundant_placeholder0S
Osequential_lstm_while_sequential_lstm_while_cond_31387___redundant_placeholder1S
Osequential_lstm_while_sequential_lstm_while_cond_31387___redundant_placeholder2S
Osequential_lstm_while_sequential_lstm_while_cond_31387___redundant_placeholder3"
sequential_lstm_while_identity
?
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: 2
sequential/lstm/while/Less?
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: 2 
sequential/lstm/while/Identity"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?	
while_body_35190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0:
??K
<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0:	?S
@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??I
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?Q
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"?
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0"z
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0"z
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_33052

inputs6
$matmul_readvariableop_dense_1_kernel: 1
#biasadd_readvariableop_dense_1_bias:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_1_kernel*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
a
B__inference_dropout_layer_call_and_return_conditional_losses_33125

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?N
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_36505

inputs
states_0
states_1>
*split_readvariableop_lstm_lstm_cell_kernel:
??9
*split_1_readvariableop_lstm_lstm_cell_bias:	?A
.readvariableop_lstm_lstm_cell_recurrent_kernel:	@?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOp*split_readvariableop_lstm_lstm_cell_kernel* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????@2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????@2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????@2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOp*split_1_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3g
mul_4Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_4g
mul_5Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_5g
mul_6Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_6g
mul_7Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_7?
ReadVariableOpReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????@2	
Sigmoid?
ReadVariableOp_1ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mul_8?
ReadVariableOp_2ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????@2
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:?????????@2
add_3?
ReadVariableOp_3ReadVariableOp.readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	@?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????@2
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?
?
while_cond_32205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_32205___redundant_placeholder03
/while_while_cond_32205___redundant_placeholder13
/while_while_cond_32205___redundant_placeholder23
/while_while_cond_32205___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?Z
?
!__inference__traced_restore_36804
file_prefix9
%assignvariableop_embedding_embeddings:
?G?1
assignvariableop_1_dense_kernel:@ +
assignvariableop_2_dense_bias: 3
!assignvariableop_3_dense_1_kernel: -
assignvariableop_4_dense_1_bias:2
(assignvariableop_5_training_rmsprop_iter:	 3
)assignvariableop_6_training_rmsprop_decay: ;
1assignvariableop_7_training_rmsprop_learning_rate: 6
,assignvariableop_8_training_rmsprop_momentum: 1
'assignvariableop_9_training_rmsprop_rho: =
)assignvariableop_10_lstm_lstm_cell_kernel:
??F
3assignvariableop_11_lstm_lstm_cell_recurrent_kernel:	@?6
'assignvariableop_12_lstm_lstm_cell_bias:	?G
5assignvariableop_13_training_rmsprop_dense_kernel_rms:@ A
3assignvariableop_14_training_rmsprop_dense_bias_rms: I
7assignvariableop_15_training_rmsprop_dense_1_kernel_rms: C
5assignvariableop_16_training_rmsprop_dense_1_bias_rms:R
>assignvariableop_17_training_rmsprop_lstm_lstm_cell_kernel_rms:
??[
Hassignvariableop_18_training_rmsprop_lstm_lstm_cell_recurrent_kernel_rms:	@?K
<assignvariableop_19_training_rmsprop_lstm_lstm_cell_bias_rms:	?
identity_21??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp(assignvariableop_5_training_rmsprop_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp)assignvariableop_6_training_rmsprop_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp1assignvariableop_7_training_rmsprop_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_training_rmsprop_momentumIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp'assignvariableop_9_training_rmsprop_rhoIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp)assignvariableop_10_lstm_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp3assignvariableop_11_lstm_lstm_cell_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp'assignvariableop_12_lstm_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp5assignvariableop_13_training_rmsprop_dense_kernel_rmsIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp3assignvariableop_14_training_rmsprop_dense_bias_rmsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp7assignvariableop_15_training_rmsprop_dense_1_kernel_rmsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp5assignvariableop_16_training_rmsprop_dense_1_bias_rmsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp>assignvariableop_17_training_rmsprop_lstm_lstm_cell_kernel_rmsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpHassignvariableop_18_training_rmsprop_lstm_lstm_cell_recurrent_kernel_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp<assignvariableop_19_training_rmsprop_lstm_lstm_cell_bias_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_199
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_20?
Identity_21IdentityIdentity_20:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_21"#
identity_21Identity_21:output:0*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
%__inference_dense_layer_call_fn_36367

inputs
dense_kernel:@ 

dense_bias: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_kernel
dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_330382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?	
while_body_35505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0:
??K
<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0:	?S
@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel:
??I
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias:	?Q
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
while/lstm_cell/dropout/Const?
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul?
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/lstm_cell/dropout/Shape?
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???26
4while/lstm_cell/dropout/random_uniform/RandomUniform?
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2(
&while/lstm_cell/dropout/GreaterEqual/y?
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2&
$while/lstm_cell/dropout/GreaterEqual?
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Cast?
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul_1?
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_1/Const?
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_1/Mul?
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_1/Shape?
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2Ɯ?28
6while/lstm_cell/dropout_1/random_uniform/RandomUniform?
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_1/GreaterEqual/y?
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_1/GreaterEqual?
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_1/Cast?
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_1/Mul_1?
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_2/Const?
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_2/Mul?
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_2/Shape?
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_2/random_uniform/RandomUniform?
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_2/GreaterEqual/y?
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_2/GreaterEqual?
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_2/Cast?
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_2/Mul_1?
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_3/Const?
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_3/Mul?
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_3/Shape?
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_3/random_uniform/RandomUniform?
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_3/GreaterEqual/y?
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_3/GreaterEqual?
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_3/Cast?
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_3/Mul_1?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_4/Const?
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_4/Mul?
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_4/Shape?
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?أ28
6while/lstm_cell/dropout_4/random_uniform/RandomUniform?
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_4/GreaterEqual/y?
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_4/GreaterEqual?
while/lstm_cell/dropout_4/CastCast*while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_4/Cast?
while/lstm_cell/dropout_4/Mul_1Mul!while/lstm_cell/dropout_4/Mul:z:0"while/lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_4/Mul_1?
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_5/Const?
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_5/Mul?
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_5/Shape?
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_5/random_uniform/RandomUniform?
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_5/GreaterEqual/y?
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_5/GreaterEqual?
while/lstm_cell/dropout_5/CastCast*while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_5/Cast?
while/lstm_cell/dropout_5/Mul_1Mul!while/lstm_cell/dropout_5/Mul:z:0"while/lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_5/Mul_1?
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_6/Const?
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_6/Mul?
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_6/Shape?
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_6/random_uniform/RandomUniform?
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_6/GreaterEqual/y?
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_6/GreaterEqual?
while/lstm_cell/dropout_6/CastCast*while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_6/Cast?
while/lstm_cell/dropout_6/Mul_1Mul!while/lstm_cell/dropout_6/Mul:z:0"while/lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_6/Mul_1?
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell/dropout_7/Const?
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_7/Mul?
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_7/Shape?
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_7/random_uniform/RandomUniform?
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell/dropout_7/GreaterEqual/y?
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_7/GreaterEqual?
while/lstm_cell/dropout_7/CastCast*while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_7/Cast?
while/lstm_cell/dropout_7/Mul_1Mul!while/lstm_cell/dropout_7/Mul:z:0"while/lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_7/Mul_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2#while/lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2#while/lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2#while/lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2#while/lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"?
>while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel@while_lstm_cell_readvariableop_lstm_lstm_cell_recurrent_kernel_0"z
:while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias<while_lstm_cell_split_1_readvariableop_lstm_lstm_cell_bias_0"z
:while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel<while_lstm_cell_split_readvariableop_lstm_lstm_cell_kernel_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
$__inference_lstm_layer_call_fn_35065

inputs)
lstm_lstm_cell_kernel:
??"
lstm_lstm_cell_bias:	?2
lstm_lstm_cell_recurrent_kernel:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_biaslstm_lstm_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_330152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:???????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_33057

inputs2
embedding_embedding_embeddings:
?G?.
lstm_lstm_lstm_cell_kernel:
??'
lstm_lstm_lstm_cell_bias:	?7
$lstm_lstm_lstm_cell_recurrent_kernel:	@?$
dense_dense_kernel:@ 
dense_dense_bias: (
dense_1_dense_1_kernel: "
dense_1_dense_1_bias:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_embedding_embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_327622#
!embedding/StatefulPartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0lstm_lstm_lstm_cell_kernellstm_lstm_lstm_cell_bias$lstm_lstm_lstm_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_330152
lstm/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_330252
dropout/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_330382
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_330522!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_33335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_33335___redundant_placeholder03
/while_while_cond_33335___redundant_placeholder13
/while_while_cond_33335___redundant_placeholder23
/while_while_cond_33335___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
L
embedding_input9
!serving_default_embedding_input:0??????????;
dense_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?6
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
__default_save_signature
`__call__
*a&call_and_return_all_conditional_losses"?3
_tf_keras_sequential?2{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3183]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3183]}, "dtype": "float32", "input_dim": 9211, "output_dim": 300, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 3183}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3183, 9211]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.3, "recurrent_dropout": 0.3, "implementation": 1}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 15, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3183]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 3183]}, "float32", "embedding_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3183]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}, "shared_object_id": 0}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3183]}, "dtype": "float32", "input_dim": 9211, "output_dim": 300, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 3183}, "shared_object_id": 2}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3183, 9211]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.3, "recurrent_dropout": 0.3, "implementation": 1}, "shared_object_id": 7}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}]}}, "training_config": {"loss": "mse", "metrics": [], "loss_weights": null, "sample_weight_mode": null, "weighted_metrics": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
?

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
b__call__
*c&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "embedding", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3183]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3183]}, "dtype": "float32", "input_dim": 9211, "output_dim": 300, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 3183}, "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3183]}}
?
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
d__call__
*e&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?{"name": "lstm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3183, 9211]}, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3183, 9211]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.3, "recurrent_dropout": 0.3, "implementation": 1}, "shared_object_id": 7, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 300]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 16}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3183, 300]}}
?
	variables
regularization_losses
trainable_variables
	keras_api
f__call__
*g&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 8}
?

kernel
bias
	variables
regularization_losses
trainable_variables
 	keras_api
h__call__
*i&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

!kernel
"bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
j__call__
*k&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
'iter
	(decay
)learning_rate
*momentum
+rho	rmsX	rmsY	!rmsZ	"rms[	,rms\	-rms]	.rms^"
	optimizer
 "
trackable_list_wrapper
X
0
,1
-2
.3
4
5
!6
"7"
trackable_list_wrapper
Q
,0
-1
.2
3
4
!5
"6"
trackable_list_wrapper
?
/layer_metrics

0layers
1metrics
2non_trainable_variables
3layer_regularization_losses
regularization_losses
	variables
	trainable_variables
`__call__
__default_save_signature
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
,
lserving_default"
signature_map
(:&
?G?2embedding/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
4layer_metrics

5layers
6metrics
7non_trainable_variables
	variables
8layer_regularization_losses
regularization_losses
trainable_variables
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
?	
9
state_size

,kernel
-recurrent_kernel
.bias
:	variables
;regularization_losses
<trainable_variables
=	keras_api
m__call__
*n&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lstm_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.3, "recurrent_dropout": 0.3, "implementation": 1}, "shared_object_id": 6}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
?
>layer_metrics

?states

@layers
Ametrics
Bnon_trainable_variables
Clayer_regularization_losses
regularization_losses
	variables
trainable_variables
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dlayer_metrics

Elayers
Fmetrics
Gnon_trainable_variables
	variables
Hlayer_regularization_losses
regularization_losses
trainable_variables
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
:@ 2dense/kernel
: 2
dense/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Ilayer_metrics

Jlayers
Kmetrics
Lnon_trainable_variables
	variables
Mlayer_regularization_losses
regularization_losses
trainable_variables
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_1/kernel
:2dense_1/bias
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
?
Nlayer_metrics

Olayers
Pmetrics
Qnon_trainable_variables
#	variables
Rlayer_regularization_losses
$regularization_losses
%trainable_variables
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
:	 (2training/RMSprop/iter
 : (2training/RMSprop/decay
(:& (2training/RMSprop/learning_rate
#:! (2training/RMSprop/momentum
: (2training/RMSprop/rho
):'
??2lstm/lstm_cell/kernel
2:0	@?2lstm/lstm_cell/recurrent_kernel
": ?2lstm/lstm_cell/bias
 "
trackable_dict_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
?
Slayer_metrics

Tlayers
Umetrics
Vnon_trainable_variables
:	variables
Wlayer_regularization_losses
;regularization_losses
<trainable_variables
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
1:/@ 2!training/RMSprop/dense/kernel/rms
+:) 2training/RMSprop/dense/bias/rms
3:1 2#training/RMSprop/dense_1/kernel/rms
-:+2!training/RMSprop/dense_1/bias/rms
<::
??2*training/RMSprop/lstm/lstm_cell/kernel/rms
E:C	@?24training/RMSprop/lstm/lstm_cell/recurrent_kernel/rms
5:3?2(training/RMSprop/lstm/lstm_cell/bias/rms
?2?
 __inference__wrapped_model_31536?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? */?,
*?'
embedding_input??????????
?2?
*__inference_sequential_layer_call_fn_33068
*__inference_sequential_layer_call_fn_34338
*__inference_sequential_layer_call_fn_34351
*__inference_sequential_layer_call_fn_34276?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_34621
E__inference_sequential_layer_call_and_return_conditional_losses_35026
E__inference_sequential_layer_call_and_return_conditional_losses_34293
E__inference_sequential_layer_call_and_return_conditional_losses_34310?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_embedding_layer_call_fn_35032?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_35041?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_lstm_layer_call_fn_35049
$__inference_lstm_layer_call_fn_35057
$__inference_lstm_layer_call_fn_35065
$__inference_lstm_layer_call_fn_35073?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
?__inference_lstm_layer_call_and_return_conditional_losses_35324
?__inference_lstm_layer_call_and_return_conditional_losses_35703
?__inference_lstm_layer_call_and_return_conditional_losses_35954
?__inference_lstm_layer_call_and_return_conditional_losses_36333?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dropout_layer_call_fn_36338
'__inference_dropout_layer_call_fn_36343?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dropout_layer_call_and_return_conditional_losses_36348
B__inference_dropout_layer_call_and_return_conditional_losses_36360?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_36367?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_36378?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_36385?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_36395?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_34325embedding_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_lstm_cell_layer_call_fn_36409
)__inference_lstm_cell_layer_call_fn_36423?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_36505
D__inference_lstm_cell_layer_call_and_return_conditional_losses_36651?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
 __inference__wrapped_model_31536x,.-!"9?6
/?,
*?'
embedding_input??????????
? "1?.
,
dense_1!?
dense_1??????????
B__inference_dense_1_layer_call_and_return_conditional_losses_36395\!"/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? z
'__inference_dense_1_layer_call_fn_36385O!"/?,
%?"
 ?
inputs????????? 
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_36378\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? x
%__inference_dense_layer_call_fn_36367O/?,
%?"
 ?
inputs?????????@
? "?????????? ?
B__inference_dropout_layer_call_and_return_conditional_losses_36348\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_36360\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? z
'__inference_dropout_layer_call_fn_36338O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@z
'__inference_dropout_layer_call_fn_36343O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
D__inference_embedding_layer_call_and_return_conditional_losses_35041b0?-
&?#
!?
inputs??????????
? "+?(
!?
0???????????
? ?
)__inference_embedding_layer_call_fn_35032U0?-
&?#
!?
inputs??????????
? "?????????????
D__inference_lstm_cell_layer_call_and_return_conditional_losses_36505?,.-??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p 
? "s?p
i?f
?
0/0?????????@
E?B
?
0/1/0?????????@
?
0/1/1?????????@
? ?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_36651?,.-??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p
? "s?p
i?f
?
0/0?????????@
E?B
?
0/1/0?????????@
?
0/1/1?????????@
? ?
)__inference_lstm_cell_layer_call_fn_36409?,.-??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p 
? "c?`
?
0?????????@
A?>
?
1/0?????????@
?
1/1?????????@?
)__inference_lstm_cell_layer_call_fn_36423?,.-??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p
? "c?`
?
0?????????@
A?>
?
1/0?????????@
?
1/1?????????@?
?__inference_lstm_layer_call_and_return_conditional_losses_35324~,.-P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "%?"
?
0?????????@
? ?
?__inference_lstm_layer_call_and_return_conditional_losses_35703~,.-P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "%?"
?
0?????????@
? ?
?__inference_lstm_layer_call_and_return_conditional_losses_35954o,.-A?>
7?4
&?#
inputs???????????

 
p 

 
? "%?"
?
0?????????@
? ?
?__inference_lstm_layer_call_and_return_conditional_losses_36333o,.-A?>
7?4
&?#
inputs???????????

 
p

 
? "%?"
?
0?????????@
? ?
$__inference_lstm_layer_call_fn_35049q,.-P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "??????????@?
$__inference_lstm_layer_call_fn_35057q,.-P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "??????????@?
$__inference_lstm_layer_call_fn_35065b,.-A?>
7?4
&?#
inputs???????????

 
p 

 
? "??????????@?
$__inference_lstm_layer_call_fn_35073b,.-A?>
7?4
&?#
inputs???????????

 
p

 
? "??????????@?
E__inference_sequential_layer_call_and_return_conditional_losses_34293t,.-!"A?>
7?4
*?'
embedding_input??????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_34310t,.-!"A?>
7?4
*?'
embedding_input??????????
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_34621k,.-!"8?5
.?+
!?
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_35026k,.-!"8?5
.?+
!?
inputs??????????
p

 
? "%?"
?
0?????????
? ?
*__inference_sequential_layer_call_fn_33068g,.-!"A?>
7?4
*?'
embedding_input??????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_34276g,.-!"A?>
7?4
*?'
embedding_input??????????
p

 
? "???????????
*__inference_sequential_layer_call_fn_34338^,.-!"8?5
.?+
!?
inputs??????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_34351^,.-!"8?5
.?+
!?
inputs??????????
p

 
? "???????????
#__inference_signature_wrapper_34325?,.-!"L?I
? 
B??
=
embedding_input*?'
embedding_input??????????"1?.
,
dense_1!?
dense_1?????????