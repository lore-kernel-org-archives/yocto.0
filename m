Return-Path: <chandrasekhar@evolute.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9934E00CE5; Mon,  4 Sep 2017 00:41:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, SPF_HELO_PASS,
	UNPARSEABLE_RELAY, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [202.137.236.230 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 403 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Sep 2017 00:41:22 PDT
Received: from rediffmail.com (pro236-230.mxout.rediffmailpro.com
	[202.137.236.230])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CB73E00CAF
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 00:41:22 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1504510476;
	bh=OrFC9t9fr9dul8wh4LGeHAtWHHZwXXEvdE7hl6F1lj4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=cueLzIJ+N8LGn1CYg6kvJtYKxvxsIt7aJnO907H4696bBOMa3CQWRqla7qL1TrvvU
	uqYuO7o+1z8t0G+PXWpSYVLd0HeTqUqDKAtZy81iYCoSkGsnhHpgIu3avoGr/lhEw8
	t0gyT0GV999U0sziqaM/CkVU+un6H3IbHOLRMpfY=
Received: (qmail 18656 invoked by uid 510); 4 Sep 2017 07:34:36 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: -60
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrfeelledrvdehgdejkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenhfhorhhgvgguucfjvffvrffuucdlgedtmdenucfjughrpeffggfvkfgjshfuhfgtsegrtderredttdejnecuhfhrohhmpedftghhrghnughrrghsvghkhhgrrhcutghhrghnughrrghsvghkhhgrrhdfuceotghhrghnughrrghsvghkhhgrrhesvghvohhluhhtvgdrihhnqeenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdhgqhhrgigpghhithdrsggsnecukfhppeduvddvrdduieeirddvfeefrdduudenucfrrghrrghmpehmohguvgepshhmthhpohhuth
X-Dedup-Identifier: 1504510476_18652_18650_pro-236-230
Date: 4 Sep 2017 07:34:36 -0000
MIME-Version: 1.0
To: "ktreddy 70 " <ktreddy70@gmail.com>
Received: from unknown 122.166.233.11 by rediffmailpro.com via HTTP;
	04 Sep 2017 07:34:36 -0000
Message-ID: <1504391833.S.19567.11617.pro-236-181.1504510476.18571@webmail.rediffmail.com>
In-Reply-To: <CAKXGAjBoCFr0ygfU3qtGWqfPC4JcHsvJ8syR6t6QLGLESib-UQ@mail.gmail.com>
Sender: chandrasekhar@evolute.in
From: "chandrasekhar chandrasekhar" <chandrasekhar@evolute.in>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto layer dependencies
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Sep 2017 07:41:26 -0000
Content-Type: multipart/alternative;
	boundary="=_cb7775868fdb500d1d2cd6ba8dea0e69"

--=_cb7775868fdb500d1d2cd6ba8dea0e69
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"

Hi ,&nbsp; &nbsp;Some recipes produce many more packages.&nbsp;You can see what packages a given recipe produces using BitBake&rsquo;s -e (show environment) command line switch&nbsp; &nbsp;bitbake -e package_name | grep ^PACKAGES=&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; In your case if you want to know what packages available for petalinux just give bitbake -e petalinux | grep ^PACKAGES=Regards,ChandraFrom: ktreddy 70 &lt;ktreddy70@gmail.com&gt;Sent: Sun, 3 Sep 2017 04:07:13 GMT+0530To: Fabian Knapp &lt;knapp@ambibox.de&gt;Cc: &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;Subject: Re: [yocto] yocto layer dependencies&nbsp;Hi,Thank you, &nbsp;issue got resolved after updating build/conf/bblayers.conf file,
Sorry to trouble you but now I am getting the following error what could be the reason
&nbsp;
zcu102/build$&nbsp;bitbake petalinux
Loading cache: 100% |#############################################################################################################################################| Time: 0:00:00
Loaded 3126 entries from dependency cache.
Parsing recipes: 100% |###########################################################################################################################################| Time: 0:00:00
Parsing of 2368 .bb files complete (2366 cached, 2 parsed). 3127 targets, 216 skipped, 0 masked, 0 errors.
WARNING: No recipes available for:
&nbsp; /home/ktreddy/zcu102/sources/poky/../meta-petalinux/recipes-extended/images/xen-image-minimal.bbappend
&nbsp; /home/ktreddy/zcu102/sources/poky/../meta-petalinux/recipes-extended/xen/xen_4.8.0.bbappend
ERROR: Nothing PROVIDES &#39;petalinux&#39;. Close matches:
&nbsp; petalinux-image
&nbsp; pptp-linux
&nbsp;
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
&nbsp;
zcu102/build$&nbsp;bitbake openlte
Parsing recipes: 100% |###########################################################################################################################################| Time: 0:00:51
Parsing of 2368 .bb files complete (0 cached, 2368 parsed). 3127 targets, 216 skipped, 0 masked, 0 errors.
WARNING: No recipes available for:
&nbsp; /home/ktreddy/zcu102/sources/poky/../meta-petalinux/recipes-extended/images/xen-image-minimal.bbappend
&nbsp; /home/ktreddy/zcu102/sources/poky/../meta-petalinux/recipes-extended/xen/xen_4.8.0.bbappend
ERROR: Nothing PROVIDES &#39;openlte&#39;. Close matches:
&nbsp; openl2tp
&nbsp; openlte-git
&nbsp; openct
&nbsp;
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
&nbsp;On Sat, Sep 2, 2017 at 12:34 PM, Fabian Knapp &lt;knapp@ambibox.de&gt; wrote:
Do you have configured /meta-openembedded/meta-qt4/ in your bblayers.conf (build/conf/bblayers.conf)?
&nbsp;
&nbsp;
Fabian
&nbsp;
Von: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] Im Auftrag von ktreddy 70Gesendet: Samstag, 2. September 2017 20:30An: yocto@yoctoproject.orgBetreff: [yocto] yocto layer dependencies
&nbsp;
I am trying to set up yocto build environment for openlte, meta-sdr has most of the openlte depends
I am getting following error when I try to build sdr,&nbsp;
&nbsp;
&nbsp;
/build$ bitbake sdr
Loading cache: 100% |############################################################################################################################################| Time: 0:00:00
Loaded 1642 entries from dependency cache.
ERROR: ParseError at /home/ktreddy/zcu102/sources/poky/../meta-openembedded/meta-sdr/recipes-applications/gqrx/gqrx_git.bb:8: Could not inherit file classes/qt4x11.bbclass
&nbsp;
&nbsp;
I do have meta-qt4 under meta-openembedded layer&nbsp; as below.
&nbsp;
zcu102/sources$&nbsp;ls&nbsp;meta-openembedded/meta-qt4/classes/
qmake2.bbclass &nbsp;qmake_base.bbclass &nbsp;qt4e.bbclass &nbsp;qt4x11.bbclass
&nbsp;
&nbsp;
could you please help me on why am I getting this error ?
How can I make one layer visible to another layer ?
Ex: &nbsp;How can I make meta-sdr visible to openlte ? I mean how can I say to openlte that the dependency recipes are available under meta-sdr ?
&nbsp;
if new recipes are available for a layer how can I get those on to my build environment ?
&nbsp;
Thanks for your help.--_______________________________________________yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/listinfo/yocto

--=_cb7775868fdb500d1d2cd6ba8dea0e69
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

Hi ,<br />&nbsp; &nbsp;Some recipes produce many more packages.&nbsp;You ca=
n see what packages a given recipe produces using BitBake&rsquo;s -e (show =
environment) command line switch<br />&nbsp; &nbsp;bitbake -e package_name =
| grep ^PACKAGES=3D&nbsp;<br />&nbsp; &nbsp;<br />&nbsp; &nbsp; In your cas=
e if you want to know what packages available for petalinux just give bitba=
ke -e petalinux | grep ^PACKAGES=3D<br />Regards,<br />Chandra<br /><br />F=
rom: ktreddy 70 &lt;ktreddy70@gmail.com&gt;<br />Sent: Sun, 3 Sep 2017 04:0=
7:13 GMT+0530<br />To: Fabian Knapp &lt;knapp@ambibox.de&gt;<br />Cc: &quot=
;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;<br />Subject: =
Re: [yocto] yocto layer dependencies<br />&nbsp;<div dir=3D"ltr"><span styl=
e=3D"font-size:12.8px">Hi,</span><div style=3D"font-size:12.8px">Thank you,=
 &nbsp;issue got resolved after updating <span style=3D"font-size:12.8px">b=
uild/conf/bblayers.conf file,</span></div>
<div style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Sorry to t=
rouble you but now I am getting the following error what could be the reaso=
n</span></div>
<div style=3D"font-size:12.8px">&nbsp;</div>
<div style=3D"font-size:12.8px"><div>zcu102/build$&nbsp;<b>bitbake petalinu=
x</b></div>
<div>Loading cache: 100% |#############################<wbr />#############=
#################<wbr />##############################<wbr />##############=
################<wbr />######################| Time: 0:00:00</div>
<div>Loaded 3126 entries from dependency cache.</div>
<div>Parsing recipes: 100% |#############################<wbr />###########=
###################<wbr />##############################<wbr />############=
##################<wbr />####################| Time: 0:00:00</div>
<div>Parsing of 2368 .bb files complete (2366 cached, 2 parsed). 3127 targe=
ts, 216 skipped, 0 masked, 0 errors.</div>
<div><font color=3D"#ff0000">WARNING: No recipes available for:</font></div=
>
<div><font color=3D"#ff0000">&nbsp; /home/ktreddy/zcu102/sources/<wbr />pok=
y/../meta-petalinux/<wbr />recipes-extended/images/xen-<wbr />image-minimal=
.bbappend</font></div>
<div><font color=3D"#ff0000">&nbsp; /home/ktreddy/zcu102/sources/<wbr />pok=
y/../meta-petalinux/<wbr />recipes-extended/xen/xen_4.8.<wbr />0.bbappend</=
font></div>
<div><font color=3D"#ff0000">ERROR: Nothing PROVIDES &#39;petalinux&#39;. C=
lose matches</font>:</div>
<div>&nbsp; petalinux-image</div>
<div>&nbsp; pptp-linux</div>
<div>&nbsp;</div>
<div>Summary: There was 1 WARNING message shown.</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div>
<div>&nbsp;</div>
<div>zcu102/build$&nbsp;<b>bitbake openlte</b></div>
<div>Parsing recipes: 100% |#############################<wbr />###########=
###################<wbr />##############################<wbr />############=
##################<wbr />####################| Time: 0:00:51</div>
<div>Parsing of 2368 .bb files complete (0 cached, 2368 parsed). 3127 targe=
ts, 216 skipped, 0 masked, 0 errors.</div>
<div><font color=3D"#ff0000">WARNING: No recipes available for:</font></div=
>
<div><font color=3D"#ff0000">&nbsp; /home/ktreddy/zcu102/sources/<wbr />pok=
y/../meta-petalinux/<wbr />recipes-extended/images/xen-<wbr />image-minimal=
.bbappend</font></div>
<div><font color=3D"#ff0000">&nbsp; /home/ktreddy/zcu102/sources/<wbr />pok=
y/../meta-petalinux/<wbr />recipes-extended/xen/xen_4.8.<wbr />0.bbappend</=
font></div>
<div><font color=3D"#ff0000">ERROR: Nothing PROVIDES &#39;openlte&#39;. Clo=
se matches:</font></div>
<div>&nbsp; openl2tp</div>
<div>&nbsp; openlte-git</div>
<div>&nbsp; openct</div>
<div>&nbsp;</div>
<div>Summary: There was 1 WARNING message shown.</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div></div></div>
<div class=3D"gmail_extra">&nbsp;<div class=3D"gmail_quote">On Sat, Sep 2, =
2017 at 12:34 PM, Fabian Knapp <span dir=3D"ltr">&lt;knapp@ambibox.de&gt;</=
span> wrote:
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div lang=3D"DE" link=3D"blue" vlink=3D"purp=
le"><div class=3D"m_-8469960362468444069WordSection1"><p class=3D"MsoNormal=
"><span>Do you have configured /meta-openembedded/meta-qt4/ in your bblayer=
s.conf (build/conf/bblayers.conf)?</span></p>
<p class=3D"MsoNormal"><span>&nbsp;</span></p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Fabian</p>
<p class=3D"MsoNormal"><span>&nbsp;</span></p>
<p class=3D"MsoNormal"><b>Von:</b> yocto-bounces@yoctoproject.org [mailto:y=
octo-bounces@<wbr />yoctoproject.org] <b>Im Auftrag von </b>ktreddy 70<br /=
><b>Gesendet:</b> Samstag, 2. September 2017 20:30<br /><b>An:</b> yocto@yo=
ctoproject.org<br /><b>Betreff:</b> [yocto] yocto layer dependencies</p>
<div><div class=3D"h5"><p class=3D"MsoNormal">&nbsp;</p>
<div><div style=3D"margin-left:33.0pt"><div id=3D"m_-8469960362468444069gma=
il-m_4724528447201748387gmail-:kd"><div id=3D"m_-8469960362468444069gmail-m=
_4724528447201748387gmail-:kc"><div><div><p class=3D"MsoNormal"><span style=
=3D"font-size:9.5pt">I am trying to set up yocto build environment for open=
lte, meta-sdr has most of the openlte depends</span></p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">I am getting fo=
llowing error when I try to build sdr,&nbsp;</span></p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">&nbsp;</span></=
p></div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">&nbsp;</span></p>
<div><div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">/build$ bi=
tbake sdr</span></p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Loading cache: =
100% |#############################<wbr />##############################<wb=
r />##############################<wbr />##############################<wbr=
 />#####################| Time: 0:00:00</span></p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Loaded 1642 ent=
ries from dependency cache.</span></p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">ERROR: ParseErr=
or at /home/ktreddy/zcu102/sources/<wbr />poky/../meta-openembedded/<wbr />=
meta-sdr/recipes-applications/<wbr />gqrx/<a href=3D'http://gqrx_git.bb:8/'=
>gqrx_git.bb:8</a>: Could not inherit file classes/qt4x11.bbclass</span></p=
></div></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">&nbsp;</span></=
p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">&nbsp;</span></=
p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">I do have meta-=
qt4 under meta-openembedded layer&nbsp; as below.</span></p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">&nbsp;</span></=
p></div>
<div><div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">zcu102/sou=
rces$<b>&nbsp;ls&nbsp;</b>meta-<wbr />openembedded/meta-qt4/classes/</span>=
</p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">qmake2.bbclass =
&nbsp;qmake_base.bbclass &nbsp;qt4e.bbclass &nbsp;<b>qt4x11.bbclass</b></sp=
an></p></div></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">&nbsp;</span></=
p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">&nbsp;</span></=
p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">could you pleas=
e help me on why am I getting this error ?</span></p></div></div></div></di=
v></div>
<div style=3D"margin-left:33.0pt"><div id=3D"m_-8469960362468444069gmail-m_=
4724528447201748387gmail-:kd"><div id=3D"m_-8469960362468444069gmail-m_4724=
528447201748387gmail-:kc"><div><p class=3D"MsoNormal"><span style=3D"font-s=
ize:9.5pt">How can I make one layer visible to another layer ?</span></p></=
div></div></div></div>
<div style=3D"margin-left:33.0pt"><div id=3D"m_-8469960362468444069gmail-m_=
4724528447201748387gmail-:kd"><div id=3D"m_-8469960362468444069gmail-m_4724=
528447201748387gmail-:kc"><div><p class=3D"MsoNormal"><span style=3D"font-s=
ize:9.5pt">Ex: &nbsp;How can I make meta-sdr visible to openlte ? I mean ho=
w can I say to openlte that the dependency recipes are available under meta=
-sdr ?</span></p></div></div></div></div>
<div style=3D"margin-left:33.0pt"><div id=3D"m_-8469960362468444069gmail-m_=
4724528447201748387gmail-:kd"><div id=3D"m_-8469960362468444069gmail-m_4724=
528447201748387gmail-:kc"><div><p class=3D"MsoNormal"><span style=3D"font-s=
ize:9.5pt">&nbsp;</span></p></div></div></div></div>
<div style=3D"margin-left:33.0pt"><div id=3D"m_-8469960362468444069gmail-m_=
4724528447201748387gmail-:kd"><div id=3D"m_-8469960362468444069gmail-m_4724=
528447201748387gmail-:kc"><div><p class=3D"MsoNormal"><span style=3D"font-s=
ize:9.5pt">if new recipes are available for a layer how can I get those on =
to my build environment ?</span></p></div></div></div></div>
<div style=3D"margin-left:33.0pt"><div id=3D"m_-8469960362468444069gmail-m_=
4724528447201748387gmail-:kd"><div id=3D"m_-8469960362468444069gmail-m_4724=
528447201748387gmail-:kc"><div><div><p class=3D"MsoNormal"><span style=3D"f=
ont-size:9.5pt">&nbsp;</span></p></div>
<div><p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Thanks for your=
 help.</span></p></div></div></div></div></div></div></div></div></div></di=
v></blockquote></div></div>--<br />________________________________________=
_______<br />yocto mailing list<br />yocto@yoctoproject.org<br /><a href=3D=
"//prolinks.rediffmailpro.com/cgi-bin/prored.cgi?red=3Dhttps%3A%2F%2Flists%=
2Eyoctoproject%2Eorg%2Flistinfo%2Fyocto&amp;rediffng=3D0" rel=3D"external" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a>

--=_cb7775868fdb500d1d2cd6ba8dea0e69--
