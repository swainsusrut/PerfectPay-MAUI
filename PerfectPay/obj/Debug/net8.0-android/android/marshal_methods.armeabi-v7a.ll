; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [309 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [612 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 229
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 263
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 53857724, ; 8: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 272
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 187
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 247
	i32 113429830, ; 14: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 302
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 247
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 267
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 203
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 249
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 301
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 302
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 201
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 223
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 206
	i32 276479776, ; 37: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 225
	i32 280482487, ; 39: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 222
	i32 280992041, ; 40: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 273
	i32 291076382, ; 41: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 42: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 43: Xamarin.AndroidX.Activity.dll => 0x13031348 => 192
	i32 321597661, ; 44: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 45: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 286
	i32 342366114, ; 46: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 224
	i32 356389973, ; 47: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 285
	i32 357576608, ; 48: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 273
	i32 360082299, ; 49: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 50: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 51: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 52: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 53: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 54: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 55: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 56: _Microsoft.Android.Resource.Designer => 0x17969339 => 305
	i32 403441872, ; 57: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 58: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 297
	i32 441335492, ; 59: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 207
	i32 442565967, ; 60: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 61: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 220
	i32 451504562, ; 62: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 63: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 64: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 65: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 66: System.dll => 0x1bff388e => 164
	i32 476646585, ; 67: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 222
	i32 486930444, ; 68: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 235
	i32 498788369, ; 69: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 70: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 284
	i32 503918385, ; 71: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 278
	i32 513247710, ; 72: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 181
	i32 526420162, ; 73: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 74: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 281
	i32 527452488, ; 75: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 267
	i32 530272170, ; 76: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 77: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 78: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 79: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 80: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 81: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 82: Jsr305Binding => 0x213954e7 => 260
	i32 569601784, ; 83: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 258
	i32 577335427, ; 84: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 85: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 292
	i32 601371474, ; 86: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 87: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 88: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 89: Xamarin.AndroidX.CustomView => 0x2568904f => 212
	i32 639843206, ; 90: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 218
	i32 643868501, ; 91: System.Net => 0x2660a755 => 81
	i32 662205335, ; 92: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 93: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 254
	i32 666292255, ; 94: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 199
	i32 672442732, ; 95: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 96: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 97: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 272
	i32 690569205, ; 98: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 99: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 269
	i32 693804605, ; 100: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 101: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 102: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 264
	i32 700358131, ; 103: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 104: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 287
	i32 709557578, ; 105: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 275
	i32 720511267, ; 106: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 268
	i32 722857257, ; 107: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 108: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 109: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 110: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 189
	i32 759454413, ; 111: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 112: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 113: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 114: Microsoft.Extensions.Options => 0x2f0980eb => 180
	i32 790371945, ; 115: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 213
	i32 804715423, ; 116: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 117: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 227
	i32 823281589, ; 118: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 119: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 120: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 121: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 122: Xamarin.AndroidX.Print => 0x3246f6cd => 240
	i32 870878177, ; 123: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 271
	i32 873119928, ; 124: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 125: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 126: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 127: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 128: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 129: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 299
	i32 928116545, ; 130: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 263
	i32 952186615, ; 131: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 132: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 268
	i32 966729478, ; 133: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 261
	i32 967690846, ; 134: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 224
	i32 975236339, ; 135: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 136: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 137: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 138: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 139: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 140: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 303
	i32 994442037, ; 141: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 142: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 277
	i32 1001831731, ; 143: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 144: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 244
	i32 1019214401, ; 145: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 146: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 147: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 274
	i32 1031528504, ; 148: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 262
	i32 1035644815, ; 149: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 197
	i32 1036536393, ; 150: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 151: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 152: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 231
	i32 1067306892, ; 153: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 154: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 155: Xamarin.Kotlin.StdLib => 0x409e66d8 => 265
	i32 1098259244, ; 156: System => 0x41761b2c => 164
	i32 1121599056, ; 157: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 230
	i32 1149092582, ; 158: Xamarin.AndroidX.Window => 0x447dc2e6 => 257
	i32 1170634674, ; 159: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 160: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 253
	i32 1178241025, ; 161: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 238
	i32 1178797549, ; 162: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 278
	i32 1203215381, ; 163: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 291
	i32 1204270330, ; 164: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 199
	i32 1208641965, ; 165: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 166: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 167: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 289
	i32 1243150071, ; 168: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 258
	i32 1253011324, ; 169: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 170: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 248
	i32 1267360935, ; 171: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 252
	i32 1273260888, ; 172: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 204
	i32 1275534314, ; 173: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 269
	i32 1278448581, ; 174: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 196
	i32 1293217323, ; 175: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 215
	i32 1309188875, ; 176: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 177: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 257
	i32 1324164729, ; 178: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 179: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 180: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 181: Xamarin.AndroidX.SavedState => 0x52114ed3 => 244
	i32 1379779777, ; 182: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 183: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 184: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 208
	i32 1408764838, ; 185: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 186: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 187: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 188: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 189: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 261
	i32 1439761251, ; 190: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 191: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 192: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 193: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 194: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 195: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 196: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 197: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 198: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 198
	i32 1470490898, ; 199: Microsoft.Extensions.Primitives => 0x57a5e912 => 181
	i32 1479771757, ; 200: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 201: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 202: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 203: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 245
	i32 1493001747, ; 204: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 281
	i32 1514721132, ; 205: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 276
	i32 1536373174, ; 206: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 207: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 208: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 209: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 210: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 296
	i32 1554762148, ; 211: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 279
	i32 1565862583, ; 212: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 213: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 214: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 215: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 216: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 297
	i32 1582372066, ; 217: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 214
	i32 1591080825, ; 218: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 304
	i32 1592978981, ; 219: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 220: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 262
	i32 1601112923, ; 221: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 222: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 223: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 224: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 234
	i32 1622358360, ; 225: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 226: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 256
	i32 1635184631, ; 227: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 218
	i32 1636350590, ; 228: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 211
	i32 1639515021, ; 229: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 230: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 231: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 232: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 233: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 250
	i32 1658251792, ; 234: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 259
	i32 1670060433, ; 235: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 206
	i32 1675553242, ; 236: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 237: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 238: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 239: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 240: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 241: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 242: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 266
	i32 1701541528, ; 243: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 244: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 227
	i32 1726116996, ; 245: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 246: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 247: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 202
	i32 1736233607, ; 248: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 294
	i32 1744735666, ; 249: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 250: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 251: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 252: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 253: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 254: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 255: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 249
	i32 1770582343, ; 256: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 257: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 258: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 259: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 260: Xamarin.AndroidX.Fragment => 0x6a96652d => 220
	i32 1808609942, ; 261: Xamarin.AndroidX.Loader => 0x6bcd3296 => 234
	i32 1809966115, ; 262: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 289
	i32 1813058853, ; 263: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 265
	i32 1813201214, ; 264: Xamarin.Google.Android.Material => 0x6c13413e => 259
	i32 1818569960, ; 265: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 239
	i32 1818787751, ; 266: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 267: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 283
	i32 1824175904, ; 268: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 269: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 270: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1842015223, ; 271: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 300
	i32 1847515442, ; 272: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 189
	i32 1858542181, ; 273: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 274: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 275: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 276: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 200
	i32 1888955245, ; 277: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 278: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 279: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 280: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 281: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 282: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 283: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 284: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 286
	i32 1961813231, ; 285: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 246
	i32 1968388702, ; 286: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1983156543, ; 287: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 266
	i32 1985761444, ; 288: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 191
	i32 2011961780, ; 289: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 290: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 282
	i32 2019465201, ; 291: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 231
	i32 2025202353, ; 292: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 271
	i32 2031763787, ; 293: Xamarin.Android.Glide => 0x791a414b => 188
	i32 2043674646, ; 294: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 285
	i32 2045470958, ; 295: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 296: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 226
	i32 2060060697, ; 297: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 298: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 299: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 300: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 301: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 302: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 303: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 304: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 305: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 287
	i32 2159891885, ; 306: Microsoft.Maui => 0x80bd55ad => 185
	i32 2165051842, ; 307: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 294
	i32 2181898931, ; 308: Microsoft.Extensions.Options.dll => 0x820d22b3 => 180
	i32 2192057212, ; 309: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 310: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 311: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 270
	i32 2201231467, ; 312: System.Net.Http => 0x8334206b => 64
	i32 2217644978, ; 313: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 253
	i32 2222056684, ; 314: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 315: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 235
	i32 2252106437, ; 316: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 317: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 318: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 319: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 320: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 190
	i32 2270573516, ; 321: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 279
	i32 2279755925, ; 322: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 242
	i32 2289298199, ; 323: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 298
	i32 2293034957, ; 324: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 325: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 326: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 327: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 328: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 194
	i32 2320631194, ; 329: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 330: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 331: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 332: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 333: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 334: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 299
	i32 2371007202, ; 335: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 336: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 337: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 338: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 339: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 217
	i32 2421380589, ; 340: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 341: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 290
	i32 2423080555, ; 342: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 204
	i32 2435356389, ; 343: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 344: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 345: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 346: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 347: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 348: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 207
	i32 2471841756, ; 349: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 350: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 351: Microsoft.Maui.Controls => 0x93dba8a1 => 183
	i32 2483903535, ; 352: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 353: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 354: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 355: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 356: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 229
	i32 2520433370, ; 357: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 296
	i32 2522472828, ; 358: Xamarin.Android.Glide.dll => 0x9659e17c => 188
	i32 2538310050, ; 359: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2551257009, ; 360: PerfectPay.dll => 0x981117b1 => 0
	i32 2562349572, ; 361: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 362: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 363: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 230
	i32 2581819634, ; 364: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 252
	i32 2585220780, ; 365: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 366: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 367: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 368: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 270
	i32 2615233544, ; 369: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 221
	i32 2617129537, ; 370: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 371: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 372: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 211
	i32 2624644809, ; 373: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 216
	i32 2627185994, ; 374: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 375: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 376: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 225
	i32 2663391936, ; 377: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 190
	i32 2663698177, ; 378: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 379: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 380: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 381: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 382: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 383: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 384: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 250
	i32 2715334215, ; 385: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 386: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 387: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 388: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 389: Xamarin.AndroidX.Activity => 0xa2e0939b => 192
	i32 2735172069, ; 390: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 391: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 198
	i32 2740948882, ; 392: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 393: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 394: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 184
	i32 2764765095, ; 395: Microsoft.Maui.dll => 0xa4caf7a7 => 185
	i32 2765824710, ; 396: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 397: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 264
	i32 2778768386, ; 398: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 255
	i32 2779977773, ; 399: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 243
	i32 2788224221, ; 400: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 221
	i32 2801831435, ; 401: Microsoft.Maui.Graphics => 0xa7008e0b => 187
	i32 2802068195, ; 402: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 300
	i32 2803228030, ; 403: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 404: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 277
	i32 2810250172, ; 405: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 208
	i32 2819470561, ; 406: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 407: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 408: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 243
	i32 2824502124, ; 409: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 410: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 290
	i32 2838993487, ; 411: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 232
	i32 2849599387, ; 412: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 413: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 255
	i32 2855708567, ; 414: Xamarin.AndroidX.Transition => 0xaa36a797 => 251
	i32 2857259519, ; 415: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 276
	i32 2861098320, ; 416: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 417: Microsoft.Maui.Essentials => 0xaa8a4878 => 186
	i32 2870099610, ; 418: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 193
	i32 2875164099, ; 419: Jsr305Binding.dll => 0xab5f85c3 => 260
	i32 2875220617, ; 420: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 421: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 295
	i32 2884993177, ; 422: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 219
	i32 2887636118, ; 423: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 424: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 425: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 426: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 427: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 428: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 429: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 256
	i32 2919462931, ; 430: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 431: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 195
	i32 2936416060, ; 432: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 433: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 434: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 435: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 436: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 437: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 438: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 215
	i32 2987532451, ; 439: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 246
	i32 2996846495, ; 440: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 228
	i32 3016983068, ; 441: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 248
	i32 3023353419, ; 442: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 443: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 223
	i32 3038032645, ; 444: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 305
	i32 3056245963, ; 445: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 245
	i32 3057625584, ; 446: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 236
	i32 3059408633, ; 447: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 448: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 449: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 450: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 283
	i32 3090735792, ; 451: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 452: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 453: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 454: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 455: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 456: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 457: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 458: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 459: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 460: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 461: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 462: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 237
	i32 3192346100, ; 463: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 464: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 465: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 466: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 467: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 214
	i32 3220365878, ; 468: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 469: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 470: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 471: Xamarin.AndroidX.CardView => 0xc235e84d => 202
	i32 3265493905, ; 472: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 473: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 474: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 475: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 476: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 477: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 478: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 479: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 480: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 481: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 212
	i32 3317144872, ; 482: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 483: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 200
	i32 3345895724, ; 484: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 241
	i32 3346324047, ; 485: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 238
	i32 3358260929, ; 486: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 487: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 193
	i32 3362522851, ; 488: Xamarin.AndroidX.Core => 0xc86c06e3 => 209
	i32 3366347497, ; 489: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 490: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 242
	i32 3395150330, ; 491: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 492: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 493: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 213
	i32 3411595398, ; 494: PerfectPay => 0xcb58d086 => 0
	i32 3428513518, ; 495: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 496: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 497: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 498: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 216
	i32 3445260447, ; 499: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 500: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 182
	i32 3463511458, ; 501: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 282
	i32 3471940407, ; 502: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 503: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 504: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 295
	i32 3485117614, ; 505: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 506: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 507: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 205
	i32 3509114376, ; 508: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 509: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 510: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 511: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 512: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 301
	i32 3560100363, ; 513: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 514: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3596930546, ; 515: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 275
	i32 3597029428, ; 516: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 191
	i32 3598340787, ; 517: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 518: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 519: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 274
	i32 3624195450, ; 520: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 521: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 240
	i32 3633644679, ; 522: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 195
	i32 3638274909, ; 523: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 524: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 226
	i32 3643854240, ; 525: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 237
	i32 3645089577, ; 526: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 527: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 292
	i32 3657292374, ; 528: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 529: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 530: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 280
	i32 3672681054, ; 531: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 532: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 201
	i32 3684561358, ; 533: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 205
	i32 3686075795, ; 534: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 288
	i32 3697841164, ; 535: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 304
	i32 3700866549, ; 536: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 537: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 210
	i32 3716563718, ; 538: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 539: Xamarin.AndroidX.Annotation => 0xdda814c6 => 194
	i32 3724971120, ; 540: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 236
	i32 3732100267, ; 541: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 542: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 543: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 544: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 545: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 203
	i32 3792276235, ; 546: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 547: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 182
	i32 3802395368, ; 548: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 549: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 550: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 551: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 552: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 553: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 554: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 555: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 556: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 557: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 558: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 559: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 251
	i32 3888767677, ; 560: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 241
	i32 3889960447, ; 561: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 303
	i32 3896106733, ; 562: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 563: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 209
	i32 3901907137, ; 564: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 565: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 566: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 254
	i32 3928044579, ; 567: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 568: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 569: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 239
	i32 3945713374, ; 570: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 571: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 572: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 197
	i32 3959773229, ; 573: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 228
	i32 3980434154, ; 574: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 298
	i32 3987592930, ; 575: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 280
	i32 4003436829, ; 576: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 577: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 196
	i32 4025784931, ; 578: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 579: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 184
	i32 4054681211, ; 580: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 581: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 582: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 284
	i32 4073602200, ; 583: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 584: Microsoft.Maui.Essentials.dll => 0xf40add04 => 186
	i32 4099507663, ; 585: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 586: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 587: Xamarin.AndroidX.Emoji2 => 0xf479582c => 217
	i32 4102112229, ; 588: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 293
	i32 4119206479, ; 589: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 291
	i32 4125707920, ; 590: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 288
	i32 4126470640, ; 591: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 592: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 593: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 594: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 595: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 596: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 597: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 598: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 599: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 600: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 233
	i32 4185676441, ; 601: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 602: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 603: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 604: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 293
	i32 4256097574, ; 605: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 210
	i32 4258378803, ; 606: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 232
	i32 4260525087, ; 607: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 608: Microsoft.Maui.Controls.dll => 0xfea12dee => 183
	i32 4274976490, ; 609: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 610: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 233
	i32 4294763496 ; 611: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 219
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [612 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 229, ; 3
	i32 263, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 272, ; 8
	i32 30, ; 9
	i32 124, ; 10
	i32 187, ; 11
	i32 102, ; 12
	i32 247, ; 13
	i32 302, ; 14
	i32 107, ; 15
	i32 247, ; 16
	i32 139, ; 17
	i32 267, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 203, ; 22
	i32 132, ; 23
	i32 249, ; 24
	i32 151, ; 25
	i32 301, ; 26
	i32 302, ; 27
	i32 18, ; 28
	i32 201, ; 29
	i32 26, ; 30
	i32 223, ; 31
	i32 1, ; 32
	i32 59, ; 33
	i32 42, ; 34
	i32 91, ; 35
	i32 206, ; 36
	i32 147, ; 37
	i32 225, ; 38
	i32 222, ; 39
	i32 273, ; 40
	i32 54, ; 41
	i32 69, ; 42
	i32 192, ; 43
	i32 83, ; 44
	i32 286, ; 45
	i32 224, ; 46
	i32 285, ; 47
	i32 273, ; 48
	i32 131, ; 49
	i32 55, ; 50
	i32 149, ; 51
	i32 74, ; 52
	i32 145, ; 53
	i32 62, ; 54
	i32 146, ; 55
	i32 305, ; 56
	i32 165, ; 57
	i32 297, ; 58
	i32 207, ; 59
	i32 12, ; 60
	i32 220, ; 61
	i32 125, ; 62
	i32 152, ; 63
	i32 113, ; 64
	i32 166, ; 65
	i32 164, ; 66
	i32 222, ; 67
	i32 235, ; 68
	i32 84, ; 69
	i32 284, ; 70
	i32 278, ; 71
	i32 181, ; 72
	i32 150, ; 73
	i32 281, ; 74
	i32 267, ; 75
	i32 60, ; 76
	i32 178, ; 77
	i32 51, ; 78
	i32 103, ; 79
	i32 114, ; 80
	i32 40, ; 81
	i32 260, ; 82
	i32 258, ; 83
	i32 120, ; 84
	i32 292, ; 85
	i32 52, ; 86
	i32 44, ; 87
	i32 119, ; 88
	i32 212, ; 89
	i32 218, ; 90
	i32 81, ; 91
	i32 136, ; 92
	i32 254, ; 93
	i32 199, ; 94
	i32 8, ; 95
	i32 73, ; 96
	i32 272, ; 97
	i32 155, ; 98
	i32 269, ; 99
	i32 154, ; 100
	i32 92, ; 101
	i32 264, ; 102
	i32 45, ; 103
	i32 287, ; 104
	i32 275, ; 105
	i32 268, ; 106
	i32 109, ; 107
	i32 129, ; 108
	i32 25, ; 109
	i32 189, ; 110
	i32 72, ; 111
	i32 55, ; 112
	i32 46, ; 113
	i32 180, ; 114
	i32 213, ; 115
	i32 22, ; 116
	i32 227, ; 117
	i32 86, ; 118
	i32 43, ; 119
	i32 160, ; 120
	i32 71, ; 121
	i32 240, ; 122
	i32 271, ; 123
	i32 3, ; 124
	i32 42, ; 125
	i32 63, ; 126
	i32 16, ; 127
	i32 53, ; 128
	i32 299, ; 129
	i32 263, ; 130
	i32 105, ; 131
	i32 268, ; 132
	i32 261, ; 133
	i32 224, ; 134
	i32 34, ; 135
	i32 158, ; 136
	i32 85, ; 137
	i32 32, ; 138
	i32 12, ; 139
	i32 303, ; 140
	i32 51, ; 141
	i32 277, ; 142
	i32 56, ; 143
	i32 244, ; 144
	i32 36, ; 145
	i32 177, ; 146
	i32 274, ; 147
	i32 262, ; 148
	i32 197, ; 149
	i32 35, ; 150
	i32 58, ; 151
	i32 231, ; 152
	i32 173, ; 153
	i32 17, ; 154
	i32 265, ; 155
	i32 164, ; 156
	i32 230, ; 157
	i32 257, ; 158
	i32 153, ; 159
	i32 253, ; 160
	i32 238, ; 161
	i32 278, ; 162
	i32 291, ; 163
	i32 199, ; 164
	i32 29, ; 165
	i32 52, ; 166
	i32 289, ; 167
	i32 258, ; 168
	i32 5, ; 169
	i32 248, ; 170
	i32 252, ; 171
	i32 204, ; 172
	i32 269, ; 173
	i32 196, ; 174
	i32 215, ; 175
	i32 85, ; 176
	i32 257, ; 177
	i32 61, ; 178
	i32 112, ; 179
	i32 57, ; 180
	i32 244, ; 181
	i32 99, ; 182
	i32 19, ; 183
	i32 208, ; 184
	i32 111, ; 185
	i32 101, ; 186
	i32 102, ; 187
	i32 104, ; 188
	i32 261, ; 189
	i32 71, ; 190
	i32 38, ; 191
	i32 32, ; 192
	i32 103, ; 193
	i32 73, ; 194
	i32 9, ; 195
	i32 123, ; 196
	i32 46, ; 197
	i32 198, ; 198
	i32 181, ; 199
	i32 9, ; 200
	i32 43, ; 201
	i32 4, ; 202
	i32 245, ; 203
	i32 281, ; 204
	i32 276, ; 205
	i32 31, ; 206
	i32 138, ; 207
	i32 92, ; 208
	i32 93, ; 209
	i32 296, ; 210
	i32 279, ; 211
	i32 49, ; 212
	i32 141, ; 213
	i32 112, ; 214
	i32 140, ; 215
	i32 297, ; 216
	i32 214, ; 217
	i32 304, ; 218
	i32 115, ; 219
	i32 262, ; 220
	i32 157, ; 221
	i32 76, ; 222
	i32 79, ; 223
	i32 234, ; 224
	i32 37, ; 225
	i32 256, ; 226
	i32 218, ; 227
	i32 211, ; 228
	i32 64, ; 229
	i32 138, ; 230
	i32 15, ; 231
	i32 116, ; 232
	i32 250, ; 233
	i32 259, ; 234
	i32 206, ; 235
	i32 48, ; 236
	i32 70, ; 237
	i32 80, ; 238
	i32 126, ; 239
	i32 94, ; 240
	i32 121, ; 241
	i32 266, ; 242
	i32 26, ; 243
	i32 227, ; 244
	i32 97, ; 245
	i32 28, ; 246
	i32 202, ; 247
	i32 294, ; 248
	i32 149, ; 249
	i32 169, ; 250
	i32 4, ; 251
	i32 98, ; 252
	i32 33, ; 253
	i32 93, ; 254
	i32 249, ; 255
	i32 178, ; 256
	i32 21, ; 257
	i32 41, ; 258
	i32 170, ; 259
	i32 220, ; 260
	i32 234, ; 261
	i32 289, ; 262
	i32 265, ; 263
	i32 259, ; 264
	i32 239, ; 265
	i32 2, ; 266
	i32 283, ; 267
	i32 134, ; 268
	i32 111, ; 269
	i32 179, ; 270
	i32 300, ; 271
	i32 189, ; 272
	i32 58, ; 273
	i32 95, ; 274
	i32 39, ; 275
	i32 200, ; 276
	i32 25, ; 277
	i32 94, ; 278
	i32 89, ; 279
	i32 99, ; 280
	i32 10, ; 281
	i32 87, ; 282
	i32 100, ; 283
	i32 286, ; 284
	i32 246, ; 285
	i32 174, ; 286
	i32 266, ; 287
	i32 191, ; 288
	i32 7, ; 289
	i32 282, ; 290
	i32 231, ; 291
	i32 271, ; 292
	i32 188, ; 293
	i32 285, ; 294
	i32 88, ; 295
	i32 226, ; 296
	i32 154, ; 297
	i32 33, ; 298
	i32 116, ; 299
	i32 82, ; 300
	i32 20, ; 301
	i32 11, ; 302
	i32 162, ; 303
	i32 3, ; 304
	i32 287, ; 305
	i32 185, ; 306
	i32 294, ; 307
	i32 180, ; 308
	i32 179, ; 309
	i32 84, ; 310
	i32 270, ; 311
	i32 64, ; 312
	i32 253, ; 313
	i32 143, ; 314
	i32 235, ; 315
	i32 157, ; 316
	i32 41, ; 317
	i32 117, ; 318
	i32 175, ; 319
	i32 190, ; 320
	i32 279, ; 321
	i32 242, ; 322
	i32 298, ; 323
	i32 131, ; 324
	i32 75, ; 325
	i32 66, ; 326
	i32 172, ; 327
	i32 194, ; 328
	i32 143, ; 329
	i32 106, ; 330
	i32 151, ; 331
	i32 70, ; 332
	i32 156, ; 333
	i32 299, ; 334
	i32 174, ; 335
	i32 121, ; 336
	i32 127, ; 337
	i32 152, ; 338
	i32 217, ; 339
	i32 141, ; 340
	i32 290, ; 341
	i32 204, ; 342
	i32 20, ; 343
	i32 14, ; 344
	i32 135, ; 345
	i32 75, ; 346
	i32 59, ; 347
	i32 207, ; 348
	i32 167, ; 349
	i32 168, ; 350
	i32 183, ; 351
	i32 15, ; 352
	i32 74, ; 353
	i32 6, ; 354
	i32 23, ; 355
	i32 229, ; 356
	i32 296, ; 357
	i32 188, ; 358
	i32 91, ; 359
	i32 0, ; 360
	i32 1, ; 361
	i32 136, ; 362
	i32 230, ; 363
	i32 252, ; 364
	i32 134, ; 365
	i32 69, ; 366
	i32 146, ; 367
	i32 270, ; 368
	i32 221, ; 369
	i32 88, ; 370
	i32 96, ; 371
	i32 211, ; 372
	i32 216, ; 373
	i32 31, ; 374
	i32 45, ; 375
	i32 225, ; 376
	i32 190, ; 377
	i32 109, ; 378
	i32 158, ; 379
	i32 35, ; 380
	i32 22, ; 381
	i32 114, ; 382
	i32 57, ; 383
	i32 250, ; 384
	i32 144, ; 385
	i32 118, ; 386
	i32 120, ; 387
	i32 110, ; 388
	i32 192, ; 389
	i32 139, ; 390
	i32 198, ; 391
	i32 54, ; 392
	i32 105, ; 393
	i32 184, ; 394
	i32 185, ; 395
	i32 133, ; 396
	i32 264, ; 397
	i32 255, ; 398
	i32 243, ; 399
	i32 221, ; 400
	i32 187, ; 401
	i32 300, ; 402
	i32 159, ; 403
	i32 277, ; 404
	i32 208, ; 405
	i32 163, ; 406
	i32 132, ; 407
	i32 243, ; 408
	i32 161, ; 409
	i32 290, ; 410
	i32 232, ; 411
	i32 140, ; 412
	i32 255, ; 413
	i32 251, ; 414
	i32 276, ; 415
	i32 169, ; 416
	i32 186, ; 417
	i32 193, ; 418
	i32 260, ; 419
	i32 40, ; 420
	i32 295, ; 421
	i32 219, ; 422
	i32 81, ; 423
	i32 56, ; 424
	i32 37, ; 425
	i32 97, ; 426
	i32 166, ; 427
	i32 172, ; 428
	i32 256, ; 429
	i32 82, ; 430
	i32 195, ; 431
	i32 98, ; 432
	i32 30, ; 433
	i32 159, ; 434
	i32 18, ; 435
	i32 127, ; 436
	i32 119, ; 437
	i32 215, ; 438
	i32 246, ; 439
	i32 228, ; 440
	i32 248, ; 441
	i32 165, ; 442
	i32 223, ; 443
	i32 305, ; 444
	i32 245, ; 445
	i32 236, ; 446
	i32 170, ; 447
	i32 16, ; 448
	i32 144, ; 449
	i32 283, ; 450
	i32 125, ; 451
	i32 118, ; 452
	i32 38, ; 453
	i32 115, ; 454
	i32 47, ; 455
	i32 142, ; 456
	i32 117, ; 457
	i32 34, ; 458
	i32 173, ; 459
	i32 95, ; 460
	i32 53, ; 461
	i32 237, ; 462
	i32 129, ; 463
	i32 153, ; 464
	i32 24, ; 465
	i32 161, ; 466
	i32 214, ; 467
	i32 148, ; 468
	i32 104, ; 469
	i32 89, ; 470
	i32 202, ; 471
	i32 60, ; 472
	i32 142, ; 473
	i32 100, ; 474
	i32 5, ; 475
	i32 13, ; 476
	i32 122, ; 477
	i32 135, ; 478
	i32 28, ; 479
	i32 72, ; 480
	i32 212, ; 481
	i32 24, ; 482
	i32 200, ; 483
	i32 241, ; 484
	i32 238, ; 485
	i32 137, ; 486
	i32 193, ; 487
	i32 209, ; 488
	i32 168, ; 489
	i32 242, ; 490
	i32 101, ; 491
	i32 123, ; 492
	i32 213, ; 493
	i32 0, ; 494
	i32 176, ; 495
	i32 163, ; 496
	i32 167, ; 497
	i32 216, ; 498
	i32 39, ; 499
	i32 182, ; 500
	i32 282, ; 501
	i32 17, ; 502
	i32 171, ; 503
	i32 295, ; 504
	i32 137, ; 505
	i32 150, ; 506
	i32 205, ; 507
	i32 155, ; 508
	i32 130, ; 509
	i32 19, ; 510
	i32 65, ; 511
	i32 301, ; 512
	i32 147, ; 513
	i32 47, ; 514
	i32 275, ; 515
	i32 191, ; 516
	i32 79, ; 517
	i32 61, ; 518
	i32 274, ; 519
	i32 106, ; 520
	i32 240, ; 521
	i32 195, ; 522
	i32 49, ; 523
	i32 226, ; 524
	i32 237, ; 525
	i32 14, ; 526
	i32 292, ; 527
	i32 175, ; 528
	i32 68, ; 529
	i32 280, ; 530
	i32 171, ; 531
	i32 201, ; 532
	i32 205, ; 533
	i32 288, ; 534
	i32 304, ; 535
	i32 78, ; 536
	i32 210, ; 537
	i32 108, ; 538
	i32 194, ; 539
	i32 236, ; 540
	i32 67, ; 541
	i32 63, ; 542
	i32 27, ; 543
	i32 160, ; 544
	i32 203, ; 545
	i32 10, ; 546
	i32 182, ; 547
	i32 11, ; 548
	i32 78, ; 549
	i32 126, ; 550
	i32 83, ; 551
	i32 177, ; 552
	i32 66, ; 553
	i32 107, ; 554
	i32 65, ; 555
	i32 128, ; 556
	i32 122, ; 557
	i32 77, ; 558
	i32 251, ; 559
	i32 241, ; 560
	i32 303, ; 561
	i32 8, ; 562
	i32 209, ; 563
	i32 2, ; 564
	i32 44, ; 565
	i32 254, ; 566
	i32 156, ; 567
	i32 128, ; 568
	i32 239, ; 569
	i32 23, ; 570
	i32 133, ; 571
	i32 197, ; 572
	i32 228, ; 573
	i32 298, ; 574
	i32 280, ; 575
	i32 29, ; 576
	i32 196, ; 577
	i32 62, ; 578
	i32 184, ; 579
	i32 90, ; 580
	i32 87, ; 581
	i32 284, ; 582
	i32 148, ; 583
	i32 186, ; 584
	i32 36, ; 585
	i32 86, ; 586
	i32 217, ; 587
	i32 293, ; 588
	i32 291, ; 589
	i32 288, ; 590
	i32 176, ; 591
	i32 50, ; 592
	i32 6, ; 593
	i32 90, ; 594
	i32 21, ; 595
	i32 162, ; 596
	i32 96, ; 597
	i32 50, ; 598
	i32 113, ; 599
	i32 233, ; 600
	i32 130, ; 601
	i32 76, ; 602
	i32 27, ; 603
	i32 293, ; 604
	i32 210, ; 605
	i32 232, ; 606
	i32 7, ; 607
	i32 183, ; 608
	i32 110, ; 609
	i32 233, ; 610
	i32 219 ; 611
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
