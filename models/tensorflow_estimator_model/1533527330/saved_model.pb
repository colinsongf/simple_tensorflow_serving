ې
�"�!
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
�
AsString

input"T

output"
Ttype:
	2	
"
	precisionint���������"

scientificbool( "
shortestbool( "
widthint���������"
fillstring 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
�
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
�
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
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.8.02v1.8.0-0-g93bc2e2072��

global_step/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R *
dtype0	
�
global_step
VariableV2*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
o
input_example_tensorPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
U
ParseExample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
i
'ParseExample/ParseExample/sparse_keys_0Const*
value	B Ba*
dtype0*
_output_shapes
: 
h
&ParseExample/ParseExample/dense_keys_0Const*
value	B Bb*
dtype0*
_output_shapes
: 
�
ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names'ParseExample/ParseExample/sparse_keys_0&ParseExample/ParseExample/dense_keys_0ParseExample/Const*O
_output_shapes=
;:���������:���������::���������*
Nsparse*
dense_shapes
:*
sparse_types
2*
Tdense
2*
Ndense
�
(linear/b/weight/part_0/Initializer/zerosConst*)
_class
loc:@linear/b/weight/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
linear/b/weight/part_0
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *)
_class
loc:@linear/b/weight/part_0
�
linear/b/weight/part_0/AssignAssignlinear/b/weight/part_0(linear/b/weight/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*)
_class
loc:@linear/b/weight/part_0
�
linear/b/weight/part_0/readIdentitylinear/b/weight/part_0*
T0*)
_class
loc:@linear/b/weight/part_0*
_output_shapes

:
a
linear/b/weightIdentitylinear/b/weight/part_0/read*
T0*
_output_shapes

:
�
linear/linear/b/matmulMatMulParseExample/ParseExample:3linear/b/weight*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
l
linear/linear/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"����   
�
linear/linear/ReshapeReshapelinear/linear/b/matmullinear/linear/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:���������
�
linear/linear/lookupStringToHashBucketFastParseExample/ParseExample:1*#
_output_shapes
:���������*
num_buckets�
�
9linear/a/weights/part_0/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@linear/a/weights/part_0*
valueB"�     *
dtype0*
_output_shapes
:
�
/linear/a/weights/part_0/Initializer/zeros/ConstConst**
_class 
loc:@linear/a/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)linear/a/weights/part_0/Initializer/zerosFill9linear/a/weights/part_0/Initializer/zeros/shape_as_tensor/linear/a/weights/part_0/Initializer/zeros/Const**
_class 
loc:@linear/a/weights/part_0*

index_type0*
_output_shapes
:	�*
T0
�
linear/a/weights/part_0
VariableV2**
_class 
loc:@linear/a/weights/part_0*
	container *
shape:	�*
dtype0*
_output_shapes
:	�*
shared_name 
�
linear/a/weights/part_0/AssignAssignlinear/a/weights/part_0)linear/a/weights/part_0/Initializer/zeros*
_output_shapes
:	�*
use_locking(*
T0**
_class 
loc:@linear/a/weights/part_0*
validate_shape(
�
linear/a/weights/part_0/readIdentitylinear/a/weights/part_0*
T0**
_class 
loc:@linear/a/weights/part_0*
_output_shapes
:	�
o
%linear/linear/a/a_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
n
$linear/linear/a/a_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
�
linear/linear/a/a_weights/SliceSliceParseExample/ParseExample:2%linear/linear/a/a_weights/Slice/begin$linear/linear/a/a_weights/Slice/size*
_output_shapes
:*
Index0*
T0	
i
linear/linear/a/a_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
linear/linear/a/a_weights/ProdProdlinear/linear/a/a_weights/Slicelinear/linear/a/a_weights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
l
*linear/linear/a/a_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
i
'linear/linear/a/a_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
"linear/linear/a/a_weights/GatherV2GatherV2ParseExample/ParseExample:2*linear/linear/a/a_weights/GatherV2/indices'linear/linear/a/a_weights/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
�
 linear/linear/a/a_weights/Cast/xPacklinear/linear/a/a_weights/Prod"linear/linear/a/a_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
'linear/linear/a/a_weights/SparseReshapeSparseReshapeParseExample/ParseExampleParseExample/ParseExample:2 linear/linear/a/a_weights/Cast/x*-
_output_shapes
:���������:
�
0linear/linear/a/a_weights/SparseReshape/IdentityIdentitylinear/linear/lookup*
T0	*#
_output_shapes
:���������
j
(linear/linear/a/a_weights/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
�
&linear/linear/a/a_weights/GreaterEqualGreaterEqual0linear/linear/a/a_weights/SparseReshape/Identity(linear/linear/a/a_weights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
linear/linear/a/a_weights/WhereWhere&linear/linear/a/a_weights/GreaterEqual*
T0
*'
_output_shapes
:���������
z
'linear/linear/a/a_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
!linear/linear/a/a_weights/ReshapeReshapelinear/linear/a/a_weights/Where'linear/linear/a/a_weights/Reshape/shape*
Tshape0*#
_output_shapes
:���������*
T0	
k
)linear/linear/a/a_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
$linear/linear/a/a_weights/GatherV2_1GatherV2'linear/linear/a/a_weights/SparseReshape!linear/linear/a/a_weights/Reshape)linear/linear/a/a_weights/GatherV2_1/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
k
)linear/linear/a/a_weights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
$linear/linear/a/a_weights/GatherV2_2GatherV20linear/linear/a/a_weights/SparseReshape/Identity!linear/linear/a/a_weights/Reshape)linear/linear/a/a_weights/GatherV2_2/axis*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
~
"linear/linear/a/a_weights/IdentityIdentity)linear/linear/a/a_weights/SparseReshape:1*
T0	*
_output_shapes
:
u
3linear/linear/a/a_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
�
Alinear/linear/a/a_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows$linear/linear/a/a_weights/GatherV2_1$linear/linear/a/a_weights/GatherV2_2"linear/linear/a/a_weights/Identity3linear/linear/a/a_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
Elinear/linear/a/a_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
�
Glinear/linear/a/a_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
Glinear/linear/a/a_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
�
?linear/linear/a/a_weights/embedding_lookup_sparse/strided_sliceStridedSliceAlinear/linear/a/a_weights/SparseFillEmptyRows/SparseFillEmptyRowsElinear/linear/a/a_weights/embedding_lookup_sparse/strided_slice/stackGlinear/linear/a/a_weights/embedding_lookup_sparse/strided_slice/stack_1Glinear/linear/a/a_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
end_mask*#
_output_shapes
:���������*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask 
�
6linear/linear/a/a_weights/embedding_lookup_sparse/CastCast?linear/linear/a/a_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
8linear/linear/a/a_weights/embedding_lookup_sparse/UniqueUniqueClinear/linear/a/a_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
Glinear/linear/a/a_weights/embedding_lookup_sparse/embedding_lookup/axisConst**
_class 
loc:@linear/a/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
Blinear/linear/a/a_weights/embedding_lookup_sparse/embedding_lookupGatherV2linear/a/weights/part_0/read8linear/linear/a/a_weights/embedding_lookup_sparse/UniqueGlinear/linear/a/a_weights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0**
_class 
loc:@linear/a/weights/part_0
�
1linear/linear/a/a_weights/embedding_lookup_sparseSparseSegmentSumBlinear/linear/a/a_weights/embedding_lookup_sparse/embedding_lookup:linear/linear/a/a_weights/embedding_lookup_sparse/Unique:16linear/linear/a/a_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:���������
z
)linear/linear/a/a_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
#linear/linear/a/a_weights/Reshape_1ReshapeClinear/linear/a/a_weights/SparseFillEmptyRows/SparseFillEmptyRows:2)linear/linear/a/a_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
linear/linear/a/a_weights/ShapeShape1linear/linear/a/a_weights/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
w
-linear/linear/a/a_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
y
/linear/linear/a/a_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/linear/linear/a/a_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
'linear/linear/a/a_weights/strided_sliceStridedSlicelinear/linear/a/a_weights/Shape-linear/linear/a/a_weights/strided_slice/stack/linear/linear/a/a_weights/strided_slice/stack_1/linear/linear/a/a_weights/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
c
!linear/linear/a/a_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
linear/linear/a/a_weights/stackPack!linear/linear/a/a_weights/stack/0'linear/linear/a/a_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
linear/linear/a/a_weights/TileTile#linear/linear/a/a_weights/Reshape_1linear/linear/a/a_weights/stack*0
_output_shapes
:������������������*

Tmultiples0*
T0

�
$linear/linear/a/a_weights/zeros_like	ZerosLike1linear/linear/a/a_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
linear/linear/a/a_weightsSelectlinear/linear/a/a_weights/Tile$linear/linear/a/a_weights/zeros_like1linear/linear/a/a_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
y
 linear/linear/a/a_weights/Cast_1CastParseExample/ParseExample:2*

SrcT0	*
_output_shapes
:*

DstT0
q
'linear/linear/a/a_weights/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
p
&linear/linear/a/a_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
�
!linear/linear/a/a_weights/Slice_1Slice linear/linear/a/a_weights/Cast_1'linear/linear/a/a_weights/Slice_1/begin&linear/linear/a/a_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
z
!linear/linear/a/a_weights/Shape_1Shapelinear/linear/a/a_weights*
_output_shapes
:*
T0*
out_type0
q
'linear/linear/a/a_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
y
&linear/linear/a/a_weights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
!linear/linear/a/a_weights/Slice_2Slice!linear/linear/a/a_weights/Shape_1'linear/linear/a/a_weights/Slice_2/begin&linear/linear/a/a_weights/Slice_2/size*
_output_shapes
:*
Index0*
T0
g
%linear/linear/a/a_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
 linear/linear/a/a_weights/concatConcatV2!linear/linear/a/a_weights/Slice_1!linear/linear/a/a_weights/Slice_2%linear/linear/a/a_weights/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
#linear/linear/a/a_weights/Reshape_2Reshapelinear/linear/a/a_weights linear/linear/a/a_weights/concat*
T0*
Tshape0*'
_output_shapes
:���������
n
linear/linear/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
linear/linear/Reshape_1Reshape#linear/linear/a/a_weights/Reshape_2linear/linear/Reshape_1/shape*
Tshape0*'
_output_shapes
:���������*
T0
�
linear/linear/AddNAddNlinear/linear/Reshapelinear/linear/Reshape_1*
T0*
N*'
_output_shapes
:���������
�
+linear/bias_weight/part_0/Initializer/zerosConst*,
_class"
 loc:@linear/bias_weight/part_0*
valueB*    *
dtype0*
_output_shapes
:
�
linear/bias_weight/part_0
VariableV2*
dtype0*
_output_shapes
:*
shared_name *,
_class"
 loc:@linear/bias_weight/part_0*
	container *
shape:
�
 linear/bias_weight/part_0/AssignAssignlinear/bias_weight/part_0+linear/bias_weight/part_0/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@linear/bias_weight/part_0*
validate_shape(*
_output_shapes
:
�
linear/bias_weight/part_0/readIdentitylinear/bias_weight/part_0*,
_class"
 loc:@linear/bias_weight/part_0*
_output_shapes
:*
T0
c
linear/bias_weightIdentitylinear/bias_weight/part_0/read*
T0*
_output_shapes
:
�
linear/linear/BiasAddBiasAddlinear/linear/AddNlinear/bias_weight*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
2linear/binary_logistic_head/predictions/zeros_like	ZerosLikelinear/linear/BiasAdd*
T0*'
_output_shapes
:���������
u
3linear/binary_logistic_head/predictions/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
�
.linear/binary_logistic_head/predictions/concatConcatV22linear/binary_logistic_head/predictions/zeros_likelinear/linear/BiasAdd3linear/binary_logistic_head/predictions/concat/axis*
T0*
N*'
_output_shapes
:���������*

Tidx0
�
0linear/binary_logistic_head/predictions/logisticSigmoidlinear/linear/BiasAdd*'
_output_shapes
:���������*
T0
�
5linear/binary_logistic_head/predictions/probabilitiesSoftmax.linear/binary_logistic_head/predictions/concat*
T0*'
_output_shapes
:���������
{
9linear/binary_logistic_head/predictions/classes/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
/linear/binary_logistic_head/predictions/classesArgMax.linear/binary_logistic_head/predictions/concat9linear/binary_logistic_head/predictions/classes/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
�
Elinear/binary_logistic_head/_classification_output_alternatives/ShapeShape5linear/binary_logistic_head/predictions/probabilities*
_output_shapes
:*
T0*
out_type0
�
Slinear/binary_logistic_head/_classification_output_alternatives/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Ulinear/binary_logistic_head/_classification_output_alternatives/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
Ulinear/binary_logistic_head/_classification_output_alternatives/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Mlinear/binary_logistic_head/_classification_output_alternatives/strided_sliceStridedSliceElinear/binary_logistic_head/_classification_output_alternatives/ShapeSlinear/binary_logistic_head/_classification_output_alternatives/strided_slice/stackUlinear/binary_logistic_head/_classification_output_alternatives/strided_slice/stack_1Ulinear/binary_logistic_head/_classification_output_alternatives/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
Glinear/binary_logistic_head/_classification_output_alternatives/Shape_1Shape5linear/binary_logistic_head/predictions/probabilities*
T0*
out_type0*
_output_shapes
:
�
Ulinear/binary_logistic_head/_classification_output_alternatives/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
Wlinear/binary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Wlinear/binary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Olinear/binary_logistic_head/_classification_output_alternatives/strided_slice_1StridedSliceGlinear/binary_logistic_head/_classification_output_alternatives/Shape_1Ulinear/binary_logistic_head/_classification_output_alternatives/strided_slice_1/stackWlinear/binary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_1Wlinear/binary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
Klinear/binary_logistic_head/_classification_output_alternatives/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
Klinear/binary_logistic_head/_classification_output_alternatives/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
�
Elinear/binary_logistic_head/_classification_output_alternatives/rangeRangeKlinear/binary_logistic_head/_classification_output_alternatives/range/startOlinear/binary_logistic_head/_classification_output_alternatives/strided_slice_1Klinear/binary_logistic_head/_classification_output_alternatives/range/delta*#
_output_shapes
:���������*

Tidx0
�
Nlinear/binary_logistic_head/_classification_output_alternatives/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
Jlinear/binary_logistic_head/_classification_output_alternatives/ExpandDims
ExpandDimsElinear/binary_logistic_head/_classification_output_alternatives/rangeNlinear/binary_logistic_head/_classification_output_alternatives/ExpandDims/dim*
T0*'
_output_shapes
:���������*

Tdim0
�
Plinear/binary_logistic_head/_classification_output_alternatives/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Nlinear/binary_logistic_head/_classification_output_alternatives/Tile/multiplesPackMlinear/binary_logistic_head/_classification_output_alternatives/strided_slicePlinear/binary_logistic_head/_classification_output_alternatives/Tile/multiples/1*
N*
_output_shapes
:*
T0*

axis 
�
Dlinear/binary_logistic_head/_classification_output_alternatives/TileTileJlinear/binary_logistic_head/_classification_output_alternatives/ExpandDimsNlinear/binary_logistic_head/_classification_output_alternatives/Tile/multiples*0
_output_shapes
:������������������*

Tmultiples0*
T0
�
Nlinear/binary_logistic_head/_classification_output_alternatives/classes_tensorAsStringDlinear/binary_logistic_head/_classification_output_alternatives/Tile*
T0*

fill *

scientific( *
width���������*0
_output_shapes
:������������������*
	precision���������*
shortest( 

initNoOp

init_1NoOp

init_all_tablesNoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_9d84c6edcfd24b06965d03926a92bf9b/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*W
valueNBLBglobal_stepBlinear/a/weightsBlinear/b/weightBlinear/bias_weight*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*<
value3B1B B1000 1 0,1000:0,1B1 1 0,1:0,1B1 0,1*
dtype0
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_steplinear/a/weights/part_0/readlinear/b/weight/part_0/readlinear/bias_weight/part_0/read"/device:CPU:0*
dtypes
2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*W
valueNBLBglobal_stepBlinear/a/weightsBlinear/b/weightBlinear/bias_weight*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*<
value3B1B B1000 1 0,1000:0,1B1 1 0,1:0,1B1 0,1*
dtype0
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*3
_output_shapes!
::	�::*
dtypes
2	
�
save/AssignAssignglobal_stepsave/RestoreV2*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save/Assign_1Assignlinear/a/weights/part_0save/RestoreV2:1*
_output_shapes
:	�*
use_locking(*
T0**
_class 
loc:@linear/a/weights/part_0*
validate_shape(
�
save/Assign_2Assignlinear/b/weight/part_0save/RestoreV2:2*)
_class
loc:@linear/b/weight/part_0*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
�
save/Assign_3Assignlinear/bias_weight/part_0save/RestoreV2:3*
use_locking(*
T0*,
_class"
 loc:@linear/bias_weight/part_0*
validate_shape(*
_output_shapes
:
X
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3
-
save/restore_allNoOp^save/restore_shard
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_130ae0153b24410d84487c4d78cf6f99/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*W
valueNBLBglobal_stepBlinear/a/weightsBlinear/b/weightBlinear/bias_weight*
dtype0
�
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*<
value3B1B B1000 1 0,1000:0,1B1 1 0,1:0,1B1 0,1*
dtype0*
_output_shapes
:
�
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesglobal_steplinear/a/weights/part_0/readlinear/b/weight/part_0/readlinear/bias_weight/part_0/read"/device:CPU:0*
dtypes
2	
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*W
valueNBLBglobal_stepBlinear/a/weightsBlinear/b/weightBlinear/bias_weight*
dtype0*
_output_shapes
:
�
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*<
value3B1B B1000 1 0,1000:0,1B1 1 0,1:0,1B1 0,1*
dtype0*
_output_shapes
:
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*3
_output_shapes!
::	�::*
dtypes
2	
�
save_1/AssignAssignglobal_stepsave_1/RestoreV2*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	
�
save_1/Assign_1Assignlinear/a/weights/part_0save_1/RestoreV2:1**
_class 
loc:@linear/a/weights/part_0*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save_1/Assign_2Assignlinear/b/weight/part_0save_1/RestoreV2:2*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*)
_class
loc:@linear/b/weight/part_0
�
save_1/Assign_3Assignlinear/bias_weight/part_0save_1/RestoreV2:3*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@linear/bias_weight/part_0*
validate_shape(
b
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"^
linearT
R
linear/b/weight/part_0:0
linear/a/weights/part_0:0
linear/bias_weight/part_0:0"�
model_variables��
�
linear/b/weight/part_0:0linear/b/weight/part_0/Assignlinear/b/weight/part_0/read:0"
linear/b/weight  "2*linear/b/weight/part_0/Initializer/zeros:0
�
linear/a/weights/part_0:0linear/a/weights/part_0/Assignlinear/a/weights/part_0/read:0" 
linear/a/weights�  "�2+linear/a/weights/part_0/Initializer/zeros:0
�
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight "2-linear/bias_weight/part_0/Initializer/zeros:0"�
trainable_variables��
�
linear/b/weight/part_0:0linear/b/weight/part_0/Assignlinear/b/weight/part_0/read:0"
linear/b/weight  "2*linear/b/weight/part_0/Initializer/zeros:0
�
linear/a/weights/part_0:0linear/a/weights/part_0/Assignlinear/a/weights/part_0/read:0" 
linear/a/weights�  "�2+linear/a/weights/part_0/Initializer/zeros:0
�
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight "2-linear/bias_weight/part_0/Initializer/zeros:0"�
	variables��
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
�
linear/b/weight/part_0:0linear/b/weight/part_0/Assignlinear/b/weight/part_0/read:0"
linear/b/weight  "2*linear/b/weight/part_0/Initializer/zeros:0
�
linear/a/weights/part_0:0linear/a/weights/part_0/Assignlinear/a/weights/part_0/read:0" 
linear/a/weights�  "�2+linear/a/weights/part_0/Initializer/zeros:0
�
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight "2-linear/bias_weight/part_0/Initializer/zeros:0"
input_feature_keys
a
b" 
legacy_init_op


group_deps*�
serving_default�
3
inputs)
input_example_tensor:0���������X
scoresN
7linear/binary_logistic_head/predictions/probabilities:0���������{
classesp
Plinear/binary_logistic_head/_classification_output_alternatives/classes_tensor:0������������������tensorflow/serving/classify*�
default_input_alternative:None�
3
inputs)
input_example_tensor:0���������X
scoresN
7linear/binary_logistic_head/predictions/probabilities:0���������{
classesp
Plinear/binary_logistic_head/_classification_output_alternatives/classes_tensor:0������������������tensorflow/serving/classify