Subject: [SUMO] NPM package recipe Javascript heap out of memory
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: Tunis, Gouvernorat de Tunis, TN (41.226.168.190)
X-Originating-Platform: Linux Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Oct 2020 06:23:09 -0700
Message-ID: <bJiQ.1602163389329413908.7e1v@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="N4EplJv09rpnnYIVeXsK"

--N4EplJv09rpnnYIVeXsK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I created a recipe that builds an NPM package, it worked well on the Zeus =
branch , but in another environment using Sumo branch this error occurred :

Log data follows
| DEBUG: Executing shell function do_compile
| npm WARN @ant-design/icons-react@2.0.1 requires a peer of @ant-design/ic=
ons@^2.0.0 but none is installed. You must install peer dependencies yourse=
lf.
| npm WARN connected-react-router@6.6.1 requires a peer of react-redux@^6.=
0.0 || ^7.1.0 but none is installed. You must install peer dependencies you=
rself.
| npm WARN draftjs-utils@0.10.2 requires a peer of draft-js@^0.11.x but no=
ne is installed. You must install peer dependencies yourself.
| npm WARN jsdom@15.2.1 requires a peer of canvas@^2.5.0 but none is insta=
lled. You must install peer dependencies yourself.
| npm WARN react-google-maps@9.4.5 requires a peer of @types/googlemaps@^3=
.0.0 but none is installed. You must install peer dependencies yourself.
| npm WARN react-google-maps@9.4.5 requires a peer of @types/markercluster=
erplus@^2.1.29 but none is installed. You must install peer dependencies yo=
urself.
| npm WARN react-instantsearch-native@5.7.0 requires a peer of react-nativ=
e@>=3D 0.32.0 but none is installed. You must install peer dependencies you=
rself.
| npm WARN slick-carousel@1.8.1 requires a peer of jquery@>=3D1.8.0 but no=
ne is installed. You must install peer dependencies yourself.
| npm WARN ws@7.2.1 requires a peer of bufferutil@^4.0.1 but none is insta=
lled. You must install peer dependencies yourself.
| npm WARN ws@7.2.1 requires a peer of utf-8-validate@^5.0.2 but none is i=
nstalled. You must install peer dependencies yourself.
| npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.4 (node_mod=
ules/fsevents):
| npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for f=
sevents@1.2.4: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux",=
"arch":"x64"})
| npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.11 (node_mo=
dules/chokidar/node_modules/fsevents):
| npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for f=
sevents@1.2.11: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux"=
,"arch":"x64"})
|
| up to date in 12.739s
|
| > Sense@1.5.0 build /media/raach/abd909e5-d129-4759-ab4a-6a467a044bc5/im=
x-sumo/imx8/tmp/work/aarch64-poky-linux/sense-web/1.1.6-r0/git
| > react-app-rewired build
|
| Creating an optimized production build...
| Browserslist: caniuse-lite is outdated. Please run next command `npm upd=
ate`
|
| <--- Last few GCs --->
|
| [26063:0x3639a50]=C2=A0=C2=A0=C2=A0 63259 ms: Mark-sweep 1404.3 (1487.5)=
 -> 1404.4 (1487.5) MB, 686.5 / 0.0 ms=C2=A0 allocation failure GC in old s=
pace requested
| [26063:0x3639a50]=C2=A0=C2=A0=C2=A0 63966 ms: Mark-sweep 1404.4 (1487.5)=
 -> 1404.3 (1459.5) MB, 707.1 / 0.0 ms=C2=A0 last resort GC in old space re=
quested
| [26063:0x3639a50]=C2=A0=C2=A0=C2=A0 64673 ms: Mark-sweep 1404.3 (1459.5)=
 -> 1404.3 (1459.5) MB, 705.9 / 0.0 ms=C2=A0 last resort GC in old space re=
quested
|
|
| <--- JS stacktrace --->
|
| =3D=3D=3D=3D JS stack trace =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
|
| Security context: 0x1e195c298ed1 <JSObject>
|=C2=A0=C2=A0=C2=A0=C2=A0 1: push(this=3D0x29586960fcc1 <JSArray[386408]>)
|=C2=A0=C2=A0=C2=A0=C2=A0 2: /* anonymous */(aka /* anonymous */) [/media/=
raach/abd909e5-d129-4759-ab4a-6a467a044bc5/imx-sumo/imx8/tmp/work/aarch64-p=
oky-linux/sense-web/1.1.6-r0/git/node_modules/webpack-sources/lib/applySour=
ceMap.js:~58] [pc=3D0x1edb749f50fe](this=3D0x1e195c282241 <undefined>,chunk=
=
=3D0x245a6ac85169 <String[2]: e}>,middleMapping=3D0x7288a626e89 <Object ma=
p =3D ...
|
| FATAL ERROR: CALL_AND_RETRY_LAST Allocation failed - JavaScript heap out=
 of memory
|=C2=A0 1: node::Abort() [node]
|=C2=A0 2: 0xf3343c [node]
|=C2=A0 3: v8::Utils::ReportOOMFailure(char const*, bool) [node]
|=C2=A0 4: v8::internal::V8::FatalProcessOutOfMemory(char const*, bool) [n=
ode]
|=C2=A0 5: v8::internal::Factory::NewUninitializedFixedArray(int) [node]
|=C2=A0 6: 0xb34a3b [node]
|=C2=A0 7: 0xb34c65 [node]
|=C2=A0 8: v8::internal::JSObject::AddDataElement(v8::internal::Handle<v8:=
:internal::JSObject>, unsigned int, v8::internal::Handle<v8::internal::Obje=
ct>, v8::internal::PropertyAttributes, v8::internal::Object::ShouldThrow) [=
node]
|=C2=A0 9: v8::internal::Object::AddDataProperty(v8::internal::LookupItera=
tor*, v8::internal::Handle<v8::internal::Object>, v8::internal::PropertyAtt=
ributes, v8::internal::Object::ShouldThrow, v8::internal::Object::StoreFrom=
Keyed) [node]
| 10: v8::internal::Object::SetProperty(v8::internal::LookupIterator*, v8:=
:internal::Handle<v8::internal::Object>, v8::internal::LanguageMode, v8::in=
ternal::Object::StoreFromKeyed) [node]
| 11: v8::internal::Runtime::SetObjectProperty(v8::internal::Isolate*, v8:=
:internal::Handle<v8::internal::Object>, v8::internal::Handle<v8::internal:=
:Object>, v8::internal::Handle<v8::internal::Object>, v8::internal::Languag=
eMode) [node]
| 12: v8::internal::Runtime_SetProperty(int, v8::internal::Object**, v8::i=
nternal::Isolate*) [node]
| 13: 0x1edb73f840bd
| npm ERR! code ELIFECYCLE
| npm ERR! errno 1
| npm ERR! Sense@1.5.0 build: `react-app-rewired build`
| npm ERR! Exit status 1
| npm ERR!
| npm ERR! Failed at the Sense@1.5.0 build script.
| npm ERR! This is probably not a problem with npm. There is likely additi=
onal logging output above.

I compared the nodejs-native recipes versions , for sumo it's 8.9.4-r0 , a=
nd in Zeus it's 10.16.3-r0

Here is my recipe:

BRANCH =3D "master"
PROTOCOL =3D "http"
SRC_URI +=3D "git://gitlab.tools.sofia.local/sofia/sense/sense_frontend.gi=
t;protocol=3D ${ PROTOCOL} ;branch=3D ${ BRANCH} "
SRCREV =3D " ${ AUTOREV} "

# Set the working directory to S variable
S =3D " ${ WORKDIR} /git"

# Add nodejs-native in real time compilation dependencies
# Cuz we will use "npm" command in do_compile
DEPENDS +=3D "nodejs-native"

NPM_CACHE =3D " ${ S} /npm_cache"

# Nothing to configure
do_configure (){
}

# Build the web application
do_compile (){
# Export the HOME directory to "S"
export HOME=3D ${ S }

# Set npm cache
npm set cache ${ NPM_CACHE }

# Make sure cache is clear for each compilation
npm cache clear --force

# Compile and Install
npm install
npm run-script build

# Clear cache again after compilation
npm cache clear --force
}

# Define the /var/www/localhost/html directory
WWW_DIR =3D " ${ localstatedir} /www/localhost/"
WWW_USR =3D "www"
WWW_GRP =3D "www-data"

SENSE_WEB_DIR =3D " ${ D} ${ WWW_DIR} /html"

# Install the web application into /var/www/localhost/html
do_install (){
# Create the web directory
install -d ${ SENSE_WEB_DIR }

# Install the web app build
cp -r ${ S } /build/ * ${ SENSE_WEB_DIR }

# Give right permissions
chown -R ${ WWW_USR } : ${ WWW_GRP } ${ D }${ WWW_DIR } /
}

# Add <www> user
inherit useradd
USERADD_PACKAGES =3D " ${ PN} "
USERADD_PARAM_${PN} =3D "\
--system --no-create-home \
--home ${ WWW_DIR} \
--groups www-data \
--user-group ${ WWW_USR} "

Is it a problem with old nodejs version ?
Any ideas?

Thanks, Talel

--N4EplJv09rpnnYIVeXsK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I created a recipe that builds an NPM package, it worked=
 well on the Zeus branch , but in another environment using Sumo branch thi=
s error occurred :<br /><br /><br />Log data follows<br />| DEBUG: Executin=
g shell function do_compile<br />| npm WARN @ant-design/icons-react@2.0.1 r=
equires a peer of @ant-design/icons@^2.0.0 but none is installed. You must =
install peer dependencies yourself.<br />| npm WARN connected-react-router@=
6.6.1 requires a peer of react-redux@^6.0.0 || ^7.1.0 but none is installed=
. You must install peer dependencies yourself.<br />| npm WARN draftjs-util=
s@0.10.2 requires a peer of draft-js@^0.11.x but none is installed. You mus=
t install peer dependencies yourself.<br />| npm WARN jsdom@15.2.1 requires=
 a peer of canvas@^2.5.0 but none is installed. You must install peer depen=
dencies yourself.<br />| npm WARN react-google-maps@9.4.5 requires a peer o=
f @types/googlemaps@^3.0.0 but none is installed. You must install peer dep=
endencies yourself.<br />| npm WARN react-google-maps@9.4.5 requires a peer=
 of @types/markerclustererplus@^2.1.29 but none is installed. You must inst=
all peer dependencies yourself.<br />| npm WARN react-instantsearch-native@=
5.7.0 requires a peer of react-native@&gt;=3D 0.32.0 but none is installed.=
 You must install peer dependencies yourself.<br />| npm WARN slick-carouse=
l@1.8.1 requires a peer of jquery@&gt;=3D1.8.0 but none is installed. You m=
ust install peer dependencies yourself.<br />| npm WARN ws@7.2.1 requires a=
 peer of bufferutil@^4.0.1 but none is installed. You must install peer dep=
endencies yourself.<br />| npm WARN ws@7.2.1 requires a peer of utf-8-valid=
ate@^5.0.2 but none is installed. You must install peer dependencies yourse=
lf.<br />| npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.4 (=
node_modules/fsevents):<br />| npm WARN notsup SKIPPING OPTIONAL DEPENDENCY=
: Unsupported platform for fsevents@1.2.4: wanted {"os":"darwin","arch":"an=
y"} (current: {"os":"linux","arch":"x64"})<br />| npm WARN optional SKIPPIN=
G OPTIONAL DEPENDENCY: fsevents@1.2.11 (node_modules/chokidar/node_modules/=
fsevents):<br />| npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported=
 platform for fsevents@1.2.11: wanted {"os":"darwin","arch":"any"} (current=
: {"os":"linux","arch":"x64"})<br />| <br />| up to date in 12.739s<br />| =
<br />| &gt; Sense@1.5.0 build /media/raach/abd909e5-d129-4759-ab4a-6a467a0=
44bc5/imx-sumo/imx8/tmp/work/aarch64-poky-linux/sense-web/1.1.6-r0/git<br /=
>| &gt; react-app-rewired build<br />| <br />| Creating an optimized produc=
tion build...<br />| Browserslist: caniuse-lite is outdated. Please run nex=
t command `npm update`<br />| <br />| &lt;--- Last few GCs ---&gt;<br />| <=
br />| [26063:0x3639a50]&nbsp;&nbsp;&nbsp; 63259 ms: Mark-sweep 1404.3 (148=
7.5) -&gt; 1404.4 (1487.5) MB, 686.5 / 0.0 ms&nbsp; allocation failure GC i=
n old space requested<br />| [26063:0x3639a50]&nbsp;&nbsp;&nbsp; 63966 ms: =
Mark-sweep 1404.4 (1487.5) -&gt; 1404.3 (1459.5) MB, 707.1 / 0.0 ms&nbsp; l=
ast resort GC in old space requested<br />| [26063:0x3639a50]&nbsp;&nbsp;&n=
bsp; 64673 ms: Mark-sweep 1404.3 (1459.5) -&gt; 1404.3 (1459.5) MB, 705.9 /=
 0.0 ms&nbsp; last resort GC in old space requested<br />| <br />| <br />| =
&lt;--- JS stacktrace ---&gt;<br />| <br />| =3D=3D=3D=3D JS stack trace =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br />| <br />| Securit=
y context: 0x1e195c298ed1 &lt;JSObject&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp; 1=
: push(this=3D0x29586960fcc1 &lt;JSArray[386408]&gt;)<br />|&nbsp;&nbsp;&nb=
sp;&nbsp; 2: /* anonymous */(aka /* anonymous */) [/media/raach/abd909e5-d1=
29-4759-ab4a-6a467a044bc5/imx-sumo/imx8/tmp/work/aarch64-poky-linux/sense-w=
eb/1.1.6-r0/git/node_modules/webpack-sources/lib/applySourceMap.js:~58] [pc=
=
=3D0x1edb749f50fe](this=3D0x1e195c282241 &lt;undefined&gt;,chunk=3D0x245a6=
ac85169 &lt;String[2]: e}&gt;,middleMapping=3D0x7288a626e89 &lt;Object map =
=
=3D ...<br />| <br />| FATAL ERROR: CALL_AND_RETRY_LAST Allocation failed =
- JavaScript heap out of memory<br />|&nbsp; 1: node::Abort() [node]<br />|=
&nbsp; 2: 0xf3343c [node]<br />|&nbsp; 3: v8::Utils::ReportOOMFailure(char =
const*, bool) [node]<br />|&nbsp; 4: v8::internal::V8::FatalProcessOutOfMem=
ory(char const*, bool) [node]<br />|&nbsp; 5: v8::internal::Factory::NewUni=
nitializedFixedArray(int) [node]<br />|&nbsp; 6: 0xb34a3b [node]<br />|&nbs=
p; 7: 0xb34c65 [node]<br />|&nbsp; 8: v8::internal::JSObject::AddDataElemen=
t(v8::internal::Handle&lt;v8::internal::JSObject&gt;, unsigned int, v8::int=
ernal::Handle&lt;v8::internal::Object&gt;, v8::internal::PropertyAttributes=
, v8::internal::Object::ShouldThrow) [node]<br />|&nbsp; 9: v8::internal::O=
bject::AddDataProperty(v8::internal::LookupIterator*, v8::internal::Handle&=
lt;v8::internal::Object&gt;, v8::internal::PropertyAttributes, v8::internal=
::Object::ShouldThrow, v8::internal::Object::StoreFromKeyed) [node]<br />| =
10: v8::internal::Object::SetProperty(v8::internal::LookupIterator*, v8::in=
ternal::Handle&lt;v8::internal::Object&gt;, v8::internal::LanguageMode, v8:=
:internal::Object::StoreFromKeyed) [node]<br />| 11: v8::internal::Runtime:=
:SetObjectProperty(v8::internal::Isolate*, v8::internal::Handle&lt;v8::inte=
rnal::Object&gt;, v8::internal::Handle&lt;v8::internal::Object&gt;, v8::int=
ernal::Handle&lt;v8::internal::Object&gt;, v8::internal::LanguageMode) [nod=
e]<br />| 12: v8::internal::Runtime_SetProperty(int, v8::internal::Object**=
, v8::internal::Isolate*) [node]<br />| 13: 0x1edb73f840bd<br />| npm ERR! =
code ELIFECYCLE<br />| npm ERR! errno 1<br />| npm ERR! Sense@1.5.0 build: =
`react-app-rewired build`<br />| npm ERR! Exit status 1<br />| npm ERR!<br =
/>| npm ERR! Failed at the Sense@1.5.0 build script.<br />| npm ERR! This i=
s probably not a problem with npm. There is likely additional logging outpu=
t above.<br /><br /><br />I compared the nodejs-native recipes versions , f=
or sumo it's 8.9.4-r0 , and in Zeus it's 10.16.3-r0<br /><br />Here is my r=
ecipe:<br /><br />
<div style=3D"color: #bbbbbb; background-color: #002b36; font-family: ''Fa=
ntasque Sans Mono','Droid Sans Mono', 'monospace', monospace, 'Droid Sans F=
allback'', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'=
; font-weight: normal; font-size: 20px; line-height: 27px; white-space: pre=
;">
<div><span style=3D"color: #268bd2;">BRANCH</span><span style=3D"color: #b=
bbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span style=3D"co=
lor: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"master"</span></div=
>
<div><span style=3D"color: #268bd2;">PROTOCOL</span><span style=3D"color: =
#bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span style=3D"=
color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"http"</span></div=
>
<div><span style=3D"color: #268bd2;">SRC_URI</span><span style=3D"color: #=
bbbbbb;"> </span><span style=3D"color: #859900;">+=3D</span><span style=3D"=
color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"git://gitlab.tool=
s.sofia.local/sofia/sense/sense_frontend.git;protocol=3D</span><span style=
=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">PROTOCOL}</s=
pan><span style=3D"color: #2aa198;">;branch=3D</span><span style=3D"color: =
#859900;">${</span><span style=3D"color: #268bd2;">BRANCH}</span><span styl=
e=3D"color: #2aa198;">"</span></div>
<div><span style=3D"color: #268bd2;">SRCREV</span><span style=3D"color: #b=
bbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span style=3D"co=
lor: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"</span><span style=
=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">AUTOREV}</sp=
an><span style=3D"color: #2aa198;">"</span></div>
<br />
<div><span style=3D"color: #657b83; font-style: italic;"># Set the working=
 directory to S variable</span></div>
<div><span style=3D"color: #268bd2;">S</span><span style=3D"color: #bbbbbb=
;"> </span><span style=3D"color: #859900;">=3D</span><span style=3D"color: =
#bbbbbb;"> </span><span style=3D"color: #2aa198;">"</span><span style=3D"co=
lor: #859900;">${</span><span style=3D"color: #268bd2;">WORKDIR}</span><spa=
n style=3D"color: #2aa198;">/git"</span></div>
<br />
<div><span style=3D"color: #657b83; font-style: italic;"># Add nodejs-nati=
ve in real time compilation dependencies</span></div>
<div><span style=3D"color: #657b83; font-style: italic;"># Cuz we will use=
 "npm" command in do_compile</span></div>
<div><span style=3D"color: #268bd2;">DEPENDS</span><span style=3D"color: #=
bbbbbb;"> </span><span style=3D"color: #859900;">+=3D</span><span style=3D"=
color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"nodejs-native"</s=
pan></div>
<br />
<div><span style=3D"color: #268bd2;">NPM_CACHE</span><span style=3D"color:=
 #bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span style=3D=
"color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"</span><span sty=
le=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">S}</span><s=
pan style=3D"color: #2aa198;">/npm_cache"</span></div>
<br />
<div><span style=3D"color: #657b83; font-style: italic;"># Nothing to conf=
igure</span></div>
<div><span style=3D"color: #268bd2;">do_configure</span><span style=3D"col=
or: #bbbbbb;">(){</span></div>
<div><span style=3D"color: #bbbbbb;">}</span></div>
<br />
<div><span style=3D"color: #657b83; font-style: italic;"># Build the web a=
pplication</span></div>
<div><span style=3D"color: #268bd2;">do_compile</span><span style=3D"color=
: #bbbbbb;">(){</span></div>
<div><span style=3D"color: #bbbbbb;"> </span><span style=3D"color: #657b83=
; font-style: italic;"># Export the HOME directory to "S"</span></div>
<div><span style=3D"color: #bbbbbb;"> </span><span style=3D"color: #93a1a1=
; font-weight: bold;">export</span><span style=3D"color: #bbbbbb;"> HOME=3D=
</span><span style=3D"color: #859900;">${</span><span style=3D"color: #268b=
d2;">S</span><span style=3D"color: #859900;">}</span></div>
<br />
<div><span style=3D"color: #bbbbbb;"> </span><span style=3D"color: #657b83=
; font-style: italic;"># Set npm cache</span></div>
<div><span style=3D"color: #bbbbbb;"> npm </span><span style=3D"color: #26=
8bd2;">set</span><span style=3D"color: #bbbbbb;"> cache </span><span style=
=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">NPM_CACHE</s=
pan><span style=3D"color: #859900;">}</span></div>
<br />
<div><span style=3D"color: #bbbbbb;"> </span><span style=3D"color: #657b83=
; font-style: italic;"># Make sure cache is clear for each compilation</spa=
n></div>
<div><span style=3D"color: #bbbbbb;"> npm cache clear --force</span></div>
<br />
<div><span style=3D"color: #bbbbbb;"> </span><span style=3D"color: #657b83=
; font-style: italic;"># Compile and Install</span></div>
<div><span style=3D"color: #bbbbbb;"> npm install</span></div>
<div><span style=3D"color: #bbbbbb;"> npm run-script build</span></div>
<br />
<div><span style=3D"color: #bbbbbb;"> </span><span style=3D"color: #657b83=
; font-style: italic;"># Clear cache again after compilation</span></div>
<div><span style=3D"color: #bbbbbb;"> npm cache clear --force</span></div>
<div><span style=3D"color: #bbbbbb;">}</span></div>
<br />
<div><span style=3D"color: #657b83; font-style: italic;"># Define the /var=
/www/localhost/html directory</span></div>
<div><span style=3D"color: #268bd2;">WWW_DIR</span><span style=3D"color: #=
bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span style=3D"c=
olor: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"</span><span style=
=
=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">localstatedi=
r}</span><span style=3D"color: #2aa198;">/www/localhost/"</span></div>
<div><span style=3D"color: #268bd2;">WWW_USR</span><span style=3D"color: #=
bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span style=3D"c=
olor: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"www"</span></div>
<div><span style=3D"color: #268bd2;">WWW_GRP</span><span style=3D"color: #=
bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span style=3D"c=
olor: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"www-data"</span></=
div>
<br />
<div><span style=3D"color: #268bd2;">SENSE_WEB_DIR</span><span style=3D"co=
lor: #bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span styl=
e=3D"color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"</span><span=
 style=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">D}</spa=
n><span style=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">=
WWW_DIR}</span><span style=3D"color: #2aa198;">/html"</span></div>
<br />
<div><span style=3D"color: #657b83; font-style: italic;"># Install the web=
 application into /var/www/localhost/html</span></div>
<div><span style=3D"color: #268bd2;">do_install</span><span style=3D"color=
: #bbbbbb;">(){</span></div>
<div><span style=3D"color: #bbbbbb;"> </span><span style=3D"color: #657b83=
; font-style: italic;"># Create the web directory</span></div>
<div><span style=3D"color: #bbbbbb;"> install -d </span><span style=3D"col=
or: #859900;">${</span><span style=3D"color: #268bd2;">SENSE_WEB_DIR</span>=
<span style=3D"color: #859900;">}</span></div>
<br />
<div><span style=3D"color: #bbbbbb;"> </span><span style=3D"color: #657b83=
; font-style: italic;"># Install the web app build</span></div>
<div><span style=3D"color: #bbbbbb;"> cp -r </span><span style=3D"color: #=
859900;">${</span><span style=3D"color: #268bd2;">S</span><span style=3D"co=
lor: #859900;">}</span><span style=3D"color: #bbbbbb;">/build/</span><span =
style=3D"color: #859900;">*</span><span style=3D"color: #bbbbbb;"> </span><=
span style=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">SEN=
SE_WEB_DIR</span><span style=3D"color: #859900;">}</span></div>
<br />
<div><span style=3D"color: #bbbbbb;"> </span><span style=3D"color: #657b83=
; font-style: italic;"># Give right permissions</span></div>
<div><span style=3D"color: #bbbbbb;"> chown -R </span><span style=3D"color=
: #859900;">${</span><span style=3D"color: #268bd2;">WWW_USR</span><span st=
yle=3D"color: #859900;">}</span><span style=3D"color: #bbbbbb;">:</span><sp=
an style=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">WWW_G=
RP</span><span style=3D"color: #859900;">}</span><span style=3D"color: #bbb=
bbb;"> </span><span style=3D"color: #859900;">${</span><span style=3D"color=
: #268bd2;">D</span><span style=3D"color: #859900;">}${</span><span style=
=3D"color: #268bd2;">WWW_DIR</span><span style=3D"color: #859900;">}</span=
><span style=3D"color: #bbbbbb;">/</span></div>
<div><span style=3D"color: #bbbbbb;">}</span></div>
<br />
<div><span style=3D"color: #657b83; font-style: italic;"># Add &lt;www&gt;=
 user</span></div>
<div><span style=3D"color: #859900;">inherit</span><span style=3D"color: #=
bbbbbb;"> useradd</span></div>
<div><span style=3D"color: #268bd2;">USERADD_PACKAGES</span><span style=3D=
"color: #bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><span s=
tyle=3D"color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"</span><s=
pan style=3D"color: #859900;">${</span><span style=3D"color: #268bd2;">PN}<=
/span><span style=3D"color: #2aa198;">"</span></div>
<div><span style=3D"color: #268bd2;">USERADD_PARAM_${PN}</span><span style=
=
=3D"color: #bbbbbb;"> </span><span style=3D"color: #859900;">=3D</span><sp=
an style=3D"color: #bbbbbb;"> </span><span style=3D"color: #2aa198;">"\</sp=
an></div>
<div><span style=3D"color: #2aa198;"> --system --no-create-home \</span></=
div>
<div><span style=3D"color: #2aa198;"> --home </span><span style=3D"color: =
#859900;">${</span><span style=3D"color: #268bd2;">WWW_DIR}</span><span sty=
le=3D"color: #2aa198;"> \</span></div>
<div><span style=3D"color: #2aa198;"> --groups www-data \</span></div>
<div><span style=3D"color: #2aa198;"> --user-group </span><span style=3D"c=
olor: #859900;">${</span><span style=3D"color: #268bd2;">WWW_USR}</span><sp=
an style=3D"color: #2aa198;">"</span></div>
</div>
<br />Is it a problem with old nodejs version ?<br />Any ideas?<br /><br /=
>Thanks, Talel

--N4EplJv09rpnnYIVeXsK--
