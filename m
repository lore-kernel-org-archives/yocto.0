Return-Path: <mag@mag.cx>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4D4BE00945; Sat, 16 May 2015 04:13:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	UC_GIBBERISH_OBFU autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.0 UC_GIBBERISH_OBFU Multiple instances of "word VERYLONGGIBBERISH
	*      word"
X-Greylist: delayed 154 seconds by postgrey-1.32 at yocto-www;
	Sat, 16 May 2015 04:13:18 PDT
Received: from ch-p-mailout01.sth.basefarm.net
	(ch-p-mailout-vip.sth.basefarm.net [164.40.177.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6CCDE00820
	for <yocto@yoctoproject.org>; Sat, 16 May 2015 04:13:18 -0700 (PDT)
Received: from c151-177-19-4.bredband.comhem.se ([151.177.19.4]:54667
	helo=server.mag.cx)
	by ch-p-mailout01.sth.basefarm.net with esmtp (Exim 4.84)
	(envelope-from <mag@mag.cx>) id 1YtZzS-0003mU-4P
	for yocto@yoctoproject.org; Sat, 16 May 2015 13:11:02 +0200
Received: from server.mag.cx (localhost [127.0.0.1])
	by server.mag.cx (Postfix) with ESMTP id D74DC1982BE0
	for <yocto@yoctoproject.org>; Sat, 16 May 2015 13:10:37 +0200 (CEST)
Received: from SEGOTNB0606 (server.mag.cx [192.168.1.2])
	by server.mag.cx (Postfix) with ESMTPSA
	for <yocto@yoctoproject.org>; Sat, 16 May 2015 13:10:37 +0200 (CEST)
From: "Christian Magnusson" <mag@mag.cx>
To: <yocto@yoctoproject.org>
Date: Sat, 16 May 2015 13:10:36 +0200
Message-ID: <005a01d08fc8$f02aeac0$d080c040$@mag.cx>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
thread-index: AdCPui0H10t0Muk3RdW1m97moS+YCw==
X-Originating-IP: 151.177.19.4
X-Scan-Result: No virus found in message 1YtZzS-0003mU-4P.
X-Scan-Signature: ch-p-mailout01.sth.basefarm.net 1YtZzS-0003mU-4P
	4ed8d0596cc202c0797562b646313023
Subject: Re: Layer Priority with Wildcard .bbappend Files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: mag@mag.cx
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 16 May 2015 11:13:25 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_005B_01D08FD9.B3B73D30"
Content-Language: sv

------=_NextPart_000_005B_01D08FD9.B3B73D30
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I also stumbled into this problem.
We are using a BSP from Phytec. It's using poky and Phytec made a simple
distribution in meta-yougurt.
Now I want to customize it, and made my own meta-platform to overwrite files
from the other layers. (prio 100)
 
# bitbake-layers show-recipes
init-ifupdown:
  meta                 1.0
 
# bitbake-layers show-layers
layer                 path                                      priority
==========================================================================
meta                  /home/s22463/yocto/sources/poky/meta      5
meta-yocto            /home/s22463/yocto/sources/poky/meta-yocto  5
meta-phytec           /home/s22463/yocto/sources/meta-phytec    20
meta-phyam335x        /home/s22463/yocto/sources/meta-phytec/meta-phyam335x
20
meta-yogurt           /home/s22463/yocto/sources/meta-yogurt    10
meta-oe               /home/s22463/yocto/sources/meta-openembedded/meta-oe
6
meta-networking
/home/s22463/yocto/sources/meta-openembedded/meta-networking  5
meta-python
/home/s22463/yocto/sources/meta-openembedded/meta-python  7
meta-systemd
/home/s22463/yocto/sources/meta-openembedded/meta-systemd  7
meta-qt5              /home/s22463/yocto/sources/meta-qt5       7
meta-platform         /home/s22463/yocto/sources/meta-platform  100
meta-webserver
/home/s22463/yocto/sources/meta-openembedded/meta-webserver  6
 
# bitbake-layers show-appends
init-ifupdown_1.0.bb:
 
/home/s22463/yocto/sources/meta-platform/recipes-core/init-ifupdown/init-ifu
pdown_1.0.bbappend
 
/home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-ifupd
own_%.bbappend
 
Changing BBFILE_PRIORITY_platform-layer in meta-platform/conf/layer.conf
doesn't affect the order either.
 
 
If I rename 
/home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-ifupd
own_%.bbappend -> init-ifupdown_1.0.bbappend
the priority works, and my files in meta-platform are installed last, as I
want to overwrite all other files.
 
# mv
/home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-ifupd
own_%.bbappend
/home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-ifupd
own_1.0.bbappend
# bitbake-layers show-appends
init-ifupdown_1.0.bb:
 
/home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-ifupd
own_1.0.bbappend
 
/home/s22463/yocto/sources/meta-platform/recipes-core/init-ifupdown/init-ifu
pdown_1.0.bbappend
 
The installation order works now, but I would rather avoid to patch the
other layers.
Changing BBFILE_PRIORITY_platform-layer in meta-platform/conf/layer.conf
now, will affect the order!, and I can install meta-plaform either before or
after the meta-yougurt layer if I want.
 
Does anyone know the reason to the faulty sort-order?
 
/Christian Magnusson
 
 
 
On 11/24/2014 03:22 PM, Stevens, Nick wrote:
I think I've encountered a bug with how multiple bbappend files are
processed 
when one of the bbappends contains a filename wildcard, but I want to make
sure 
there's not something I'm missing before filing a bug report.
 
I have a BSP layer and a customization layer that are based on the OE/poky 
Daisy release. The output of `bitbake-layers show-layers` looks like:
     layer                 path                 priority
     =====================================================
     meta                  poky/meta            5
     meta-yocto            poky/meta-yocto      5
     meta-yocto-bsp        poky/meta-yocto-bsp  5
     ...ellided...
     meta-bsp              meta-bsp             6
     meta-custom           meta-custom          8
 
In meta-bsp there is a bbappend for base-files named 
base-files_3.0.14.bbappend. The meta-bsp bbappend adds a sysctl.conf to /etc
- 
pretty straightforward:
     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
     SRC_URI += "file://sysctl.conf"
     do_install_append() {
         install -m 0644 ${WORKDIR}/sysctl.conf ${D}${sysconfdir}/
     }
 
Now what I want to do is add a file called base-files_%.bbappend to 
meta-custom. It has its own version of sysctl.conf, and the recipe looks
like 
this:
     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
Here's where things get weird. If I run `bitbake -e base-files` and pull out

the section for FILESEXTRAPATHS, this is what I get (note that I've stripped

out the huge absolute paths to make this easier to read):
     # $FILESEXTRAPATHS [5 operations]
     #   set poky/meta/conf/documentation.conf:172
     #     [doc] "Extends the search path the OpenEmbedded build system uses
when 
looking for files and patches as it processes recipes and append files."
     #   _prepend
meta-custom/recipes-core/base-files/base-files_%.bbappend:6
     #     "meta-custom/recipes-core/base-files/base-files:"
     #   _prepend
meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappend:3
     #     "meta-bsp/recipes-core/base-files/base-files:"
     #   set data_smart.py:432 [finalize]
     #     "meta-custom/recipes-core/base-files/base-files:"
     #   set data_smart.py:432 [finalize]
     #     
"meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-core/base-f
iles/base-files:"
     # computed:
     #   
"meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-core/base-f
iles/base-files:"
     
FILESEXTRAPATHS="meta-bsp/recipes-core/base-files/base-files:meta-custom/rec
ipes-core/base-files/base-files:"
 
For some reason meta-bsp is coming before meta-custom in FILESEXTRAPATHS,
even 
though meta-custom has a higher priority!
 
 

I also have some questions about how FILESEXTRAPATHS is supposed to work
with append files and layer priorities.

 

Does a higher layer priority mean that the FILESEXTRAPATHS operation should
occur first? If this is the case, then a lower priority layer prepend will
appear to the left of the higher layer prepend since it runs later, and this
will probably not provide the result you want.

 

The prepend and layer logic seems messy to me. I would like to have a way to
write my custom layer and specify that what I include in my SRC_URI in each
recipe is definitive and can not be overwritten. Suggestions on how to best
accomplish this will be greatly appreciated.

 

I have been trying to accomplish this with FILESOVERRIDES, but this logic
seems counterintuitive since DISTROOVERRIDES take precedence over
MACHINEOVERRIDES in building the file search path during the unpack task.

 

It seems to me that the file search path should be built using
FILESOVERRIDES from left to right: TRANSLATED_TARGET_ARCH, MACHINEOVERRIDES,
and then DISTROOVERRIDES (specific to generic), but this isn't what I'm
seeing. Still investigating how it's all put together...

 
 

I verified this by building an image - the sysctl.conf that ends up in the
final image is the one from meta-bsp, not the one from meta-custom. But if I
switch the name of base-files_%.bbappend in meta-custom to
base-files_3.0.14.bbappend, this is what I get:

     # $FILESEXTRAPATHS [5 operations]
     #   set poky/meta/conf/documentation.conf:172
     #     [doc] "Extends the search path the OpenEmbedded build system uses
when 
looking for files and patches as it processes recipes and append files."
     #   _prepend
meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappend:3
     #     "meta-bsp/recipes-core/base-files/base-files:"
     #   _prepend 
meta-custom/recipes-core/base-files/base-files_3.0.14.bbappend:6
     #     "meta-custom/recipes-core/base-files/base-files:"
     #   set data_smart.py:432 [finalize]
     #     "meta-bsp/recipes-core/base-files/base-files:"
     #   set data_smart.py:432 [finalize]
     #     
"meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-core/base-f
iles/base-files:"
     # computed:
     #   
"meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-core/base-f
iles/base-files:"
     
FILESEXTRAPATHS="meta-custom/recipes-core/base-files/base-files:meta-bsp/rec
ipes-core/base-files/base-files:"
 
And now the sysctl.conf file is being pulled from meta-custom.
 
Is there something I'm missing, like some sort of decreased priorty for 
bbappend files with a wildcard? Or is this a bug?
 
Thanks for any help!
 
Nick Stevens
 
 
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
 <https://lists.yoctoproject.org/listinfo/yocto>
https://lists.yoctoproject.org/listinfo/yocto

 

 


------=_NextPart_000_005B_01D08FD9.B3B73D30
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Courier;
	panose-1:2 7 4 9 2 2 5 2 4 4;}
@font-face
	{font-family:Courier;
	panose-1:2 7 4 9 2 2 5 2 4 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
tt
	{mso-style-priority:99;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";
	mso-fareast-language:SV;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DSV link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>I also =
stumbled into this problem.<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>We are using =
a BSP from Phytec. It&#8217;s using poky and Phytec made a simple =
distribution in meta-yougurt.<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>Now I want to =
customize it, and made my own meta-platform to overwrite files from the =
other layers. (prio 100)<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'># =
bitbake-layers show-recipes<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>init-ifupdown:=
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>&nbsp; =
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; 1.0<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'># =
bitbake-layers show-layers<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>layer&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; =
path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; priority<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></spa=
n></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta&nbsp;&nbs=
p; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;/home/s22463/yocto/sources/poky/meta&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; 5<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-yocto&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/s22463/yocto/sources/poky/meta-yocto&nbsp; =
5<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-phytec&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/s22463/yocto/sources/meta-phytec&nbsp;&nbsp;&nbsp; =
20<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-phyam335x=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/s22463/yocto/sources/meta-phytec/meta-phyam335x&nbsp; =
20<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-yogurt&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/s22463/yocto/sources/meta-yogurt&nbsp;&nbsp;&nbsp; =
10<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-oe&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; /home/s22463/yocto/sources/meta-openembedded/meta-oe&nbsp; =
6<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-networkin=
g&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/s22463/yocto/sources/meta-openembedded/meta-networking&nbsp; =
5<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-python&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/s22463/yocto/sources/meta-openembedded/meta-python&nbsp; =
7<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-systemd&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/s22463/yocto/sources/meta-openembedded/meta-systemd&nbsp; =
7<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-qt5&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/s22463/yocto/sources/meta-qt5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
7<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-platform&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/s22463/yocto/sources/meta-platform&nbsp; =
100<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>meta-webserver=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/s22463/yocto/sources/meta-openembedded/meta-webserver&nbsp; =
6<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'># =
bitbake-layers show-appends<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>init-ifupdown_=
1.0.bb:<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>&nbsp; =
/home/s22463/yocto/sources/meta-platform/recipes-core/init-ifupdown/init-=
ifupdown_1.0.bbappend<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>&nbsp; =
/home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-if=
updown_%.bbappend<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>Changing =
BBFILE_PRIORITY_platform-layer in meta-platform/conf/layer.conf =
doesn&#8217;t affect the order either.<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>If I rename =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>/home/s22463/y=
octo/sources/meta-yogurt/recipes-core/init-ifupdown/init-ifupdown_%.bbapp=
end -&gt; init-ifupdown_1.0.bbappend<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>the priority =
works, and my files in meta-platform are installed last, as I want to =
overwrite all other files.<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'># mv =
/home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-if=
updown_%.bbappend =
/home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-if=
updown_1.0.bbappend<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'># =
bitbake-layers show-appends<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>init-ifupdown_=
1.0.bb:<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>&nbsp; =
/home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-if=
updown_1.0.bbappend<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>&nbsp; =
/home/s22463/yocto/sources/meta-platform/recipes-core/init-ifupdown/init-=
ifupdown_1.0.bbappend<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>The =
installation order works now, but I would rather avoid to patch the =
other layers.<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>Changing =
BBFILE_PRIORITY_platform-layer in meta-platform/conf/layer.conf now, =
will affect the order!, and I can install meta-plaform either before or =
after the meta-yougurt layer if I want.<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>Does anyone =
know the reason to the faulty sort-order?<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>/Christian =
Magnusson<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>On 11/24/2014 =
03:22 PM, Stevens, Nick wrote:<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white;white-space:pre-wrap;word-wr=
ap: break-word'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>I think =
I've encountered a bug with how multiple bbappend files are processed =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>when one of =
the bbappends contains a filename wildcard, but I want to make sure =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>there's not =
something I'm missing before filing a bug =
report.<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white;white-space:pre-wrap;word-wr=
ap: break-word'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'><o:p>&nbsp;<=
/o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>I have a =
BSP layer and a customization layer that are based on the OE/poky =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>Daisy =
release. The output of `bitbake-layers show-layers` looks =
like:<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; =
layer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; =
path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; priority<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; =
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;poky/meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; 5<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; =
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; poky/meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
5<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
poky/meta-yocto-bsp&nbsp; 5<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; </span><span =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>...ellided..=
.<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; =
meta-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; =
meta-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; 6<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; </span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>meta-custom&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
meta-custom&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
8<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'><o:p>&nbsp;<=
/o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>In meta-bsp =
there is a bbappend for base-files named <o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>base-files_3=
.0.14.bbappend. The meta-bsp bbappend adds a sysctl.conf to /etc - =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>pretty =
straightforward:<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; FILESEXTRAPATHS_prepend :=3D =
&quot;${THISDIR}/${PN}:&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; SRC_URI +=3D =
&quot;file://sysctl.conf&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; do_install_append() {<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0644 =
${WORKDIR}/sysctl.conf ${D}${sysconfdir}/<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; }<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'><o:p>&nbsp;<=
/o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>Now what I =
want to do is add a file called base-files_%.bbappend to =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>meta-custom.=
 It has its own version of sysctl.conf, and the recipe looks like =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>this:<o:p></=
o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; FILESEXTRAPATHS_prepend :=3D =
&quot;${THISDIR}/${PN}:&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'><o:p>&nbsp;<=
/o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>Here's =
where things get weird. If I run `bitbake -e base-files` and pull out =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>the section =
for FILESEXTRAPATHS, this is what I get (note that I've stripped =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>out the =
huge absolute paths to make this easier to =
read):<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; # $FILESEXTRAPATHS [5 =
operations]<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp; set =
poky/meta/conf/documentation.conf:172<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; [doc] &quot;Extends the search =
path the OpenEmbedded build system uses when =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>looking for =
files and patches as it processes recipes and append =
files.&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp; &nbsp;_prepend =
meta-custom/recipes-core/base-files/base-files_%.bbappend:6<o:p></o:p></s=
pan></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;meta-custom/recipes-core/base-files/base-files:&quot;<o:p></o:p></s=
pan></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp; _prepend =
meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappend:3<o:p></o:p><=
/span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;meta-bsp/recipes-core/base-files/base-files:&quot;<o:p></o:p></span=
></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp; set data_smart.py:432 =
[finalize]<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;meta-custom/recipes-core/base-files/base-files:&quot;<o:p></o:p></s=
pan></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp; set data_smart.py:432 =
[finalize]<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&quot;meta-b=
sp/recipes-core/base-files/base-files:meta-custom/recipes-core/base-files=
/base-files:&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; # computed:<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp; <o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&quot;meta-b=
sp/recipes-core/base-files/base-files:meta-custom/recipes-core/base-files=
/base-files:&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; <o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DPT-BR =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>FILESEXTRAPA=
THS=3D&quot;meta-bsp/recipes-core/base-files/base-files:meta-custom/recip=
es-core/base-files/base-files:&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DPT-BR =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'><o:p>&nbsp;<=
/o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>For some =
reason meta-bsp is coming before meta-custom in FILESEXTRAPATHS, even =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>though =
meta-custom has a higher priority!<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white;white-space:pre-wrap;word-wr=
ap: break-word;orphans: auto;text-align:start;widows: =
1;-webkit-text-stroke-width: 0px;word-spacing:0px'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><p class=3DMsoNormal><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>I also have some questions about how FILESEXTRAPATHS is supposed to =
work</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>with append files and layer priorities.</span></tt><span lang=3DEN-US =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman","serif"'><o:p></o:p></span></p><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><p class=3DMsoNormal><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>Does a higher layer priority mean that the FILESEXTRAPATHS =
operation</span></tt><span class=3Dapple-converted-space><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>should occur first? If this is the case, then a lower priority =
layer</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>prepend will appear to the left of the higher layer prepend since =
it</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>runs later, and this will probably not provide the result you =
want.</span></tt><span lang=3DEN-US><o:p></o:p></span></p><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><p class=3DMsoNormal><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>The prepend and layer logic seems messy to me. I would like to have =
a</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>way to write my custom layer and specify that what I include in =
my</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>SRC_URI in each recipe is definitive and can not be =
overwritten.</span></tt><span class=3Dapple-converted-space><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>Suggestions on how to best accomplish this will be greatly =
appreciated.</span></tt><span lang=3DEN-US><o:p></o:p></span></p><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><p class=3DMsoNormal><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>I have been trying to accomplish this with FILESOVERRIDES, but =
this</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>logic seems counterintuitive since DISTROOVERRIDES take precedence =
over</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>MACHINEOVERRIDES in building the file search path during the unpack =
task.</span></tt><span lang=3DEN-US><o:p></o:p></span></p><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><p class=3DMsoNormal><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>It seems to me that the file search path should be built =
using</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>FILESOVERRIDES from left to right: =
TRANSLATED_TARGET_ARCH,</span></tt><span =
class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>MACHINEOVERRIDES, and then DISTROOVERRIDES (specific to generic), =
but</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>this isn't what I'm seeing. Still investigating how it's all =
put</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>together...</span></tt><span lang=3DEN-US><o:p></o:p></span></p><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><p class=3DMsoNormal><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>I verified this by building an image - the sysctl.conf that ends up =
in</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>the final image is the one from meta-bsp, not the one from =
meta-custom.</span></tt><span class=3Dapple-converted-space><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>But if I switch the name of base-files_%.bbappend in meta-custom =
to</span></tt><span class=3Dapple-converted-space><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>&nbsp;</span></span><tt><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black;background:whit=
e'>base-files_3.0.14.bbappend, this is what I get:</span></tt><span =
lang=3DEN-US><o:p></o:p></span></p><pre =
style=3D'line-height:14.7pt;background:white;white-space:pre-wrap;word-wr=
ap: break-word'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; # $FILESEXTRAPATHS [5 =
operations]<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp; set =
poky/meta/conf/documentation.conf:172<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; [doc] &quot;Extends the search =
path the OpenEmbedded build system uses when =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>looking for =
files and patches as it processes recipes and append =
files.&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; </span><span =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>#&nbsp;&nbsp=
; _prepend =
meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappend:3<o:p></o:p><=
/span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;meta-bsp/recipes-core/base-files/base-files:&quot;<o:p></o:p></span=
></pre><pre style=3D'line-height:14.7pt;background:white'><span =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp; _prepend <o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>meta-custom/=
recipes-core/base-files/base-files_3.0.14.bbappend:6<o:p></o:p></span></p=
re><pre style=3D'line-height:14.7pt;background:white'><span =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;meta-custom/recipes-core/base-files/base-files:&quot;<o:p></o:p></s=
pan></pre><pre style=3D'line-height:14.7pt;background:white'><span =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; </span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>#&nbsp;&nbsp=
; set data_smart.py:432 [finalize]<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;meta-bsp/recipes-core/base-files/base-files:&quot;<o:p></o:p></span=
></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp; set data_smart.py:432 =
[finalize]<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&quot;meta-c=
ustom/recipes-core/base-files/base-files:meta-bsp/recipes-core/base-files=
/base-files:&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; # computed:<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; #&nbsp;&nbsp; <o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&quot;meta-c=
ustom/recipes-core/base-files/base-files:meta-bsp/recipes-core/base-files=
/base-files:&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>&nbsp;&nbsp;=
&nbsp;&nbsp; <o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>FILESEXTRAPA=
THS=3D&quot;meta-custom/recipes-core/base-files/base-files:meta-bsp/recip=
es-core/base-files/base-files:&quot;<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'><o:p>&nbsp;<=
/o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>And now the =
sysctl.conf file is being pulled from =
meta-custom.<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'><o:p>&nbsp;<=
/o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>Is there =
something I'm missing, like some sort of decreased priorty for =
<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>bbappend =
files with a wildcard? Or is this a bug?<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'><o:p>&nbsp;<=
/o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>Thanks for =
any help!<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'><o:p>&nbsp;<=
/o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'>Nick =
Stevens<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:#A01E1E'><o:p>&nbsp;<=
/o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white;white-space:pre-wrap;word-wr=
ap: break-word;orphans: auto;text-align:start;widows: =
1;-webkit-text-stroke-width: 0px;word-spacing:0px'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p>&nbsp;</o=
:p></span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>--<o:p></o:p><=
/span></pre><pre style=3D'line-height:14.7pt;background:white'><span =
lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>______________=
_________________________________<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>yocto mailing =
list<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'>yocto@yoctopro=
ject.org<o:p></o:p></span></pre><pre =
style=3D'line-height:14.7pt;background:white'><span =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto"><span =
lang=3DEN-US =
style=3D'color:#A01E1E'>https://lists.yoctoproject.org/listinfo/yocto</sp=
an></a></span><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:Courier;color:black'><o:p></o:p></s=
pan></pre><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_005B_01D08FD9.B3B73D30--
