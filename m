Return-Path: <flowers.joseph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA3E4E009AA; Mon, 29 Oct 2018 06:20:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9BAAE00872
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:20:50 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id c6-v6so4893209iob.11
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:20:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=T73e92y8yo/+UbD+pDoRvHYo2RyiDL7pJkeZheN+wFc=;
	b=HcxNyyO/DQDQ+M0DXacbrw614wyvDnoyLT/v+LxQdBRoJc2RAXXg2Fe1DLNnYaznJ/
	rZaTcpb5L2wc5lqI3Ero9pp8/TbZSGUo6iRq6QqjiES86QgnSgqlfRrjt2ffZzWdYWhA
	IM8SZVcNyY1+xLS4SzyuY2LKg0CIwS+XdObVqaGzpllqm6yXWMsAxIsBIe1dmZrSsLFH
	wBQsBJ9nhJ4o4pX70WxX5CNvAnCbkli3aK6GUtZ+QzhGi84WFsJzExHbvjh5Nig4aSoA
	QyWbTqP9978xLXSly5zilyChOT78pJkfNGl2SlANe1DY0DWvzJE3O1FVFa8WRNVTCKM7
	UChA==
X-Gm-Message-State: AGRZ1gIcZ5reuj3ARj2whgjW6QEVElauxkEb11J0h0idsAyJ9W9Ak82U
	70glTGv54S1nuZ4/H+Fj7RtPceL6F/iGB+PvqA==
X-Google-Smtp-Source: AJdET5c1N1DfyjzWG4TlkLnHKApHy+FItzEIhU5G0Es8+Krx12uXYwj7HKpnuhYVAuV6Zr93o+P/MSD3bg8AHTNijPc=
X-Received: by 2002:a6b:e801:: with SMTP id f1-v6mr8103177ioh.19.1540819249920;
	Mon, 29 Oct 2018 06:20:49 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEPrnNxV5HAwZ-KA98vFLHzqYbo0MHAb+mj+aq_cr=pHig@mail.gmail.com>
	<CAJTo0LbZTFEEeaZ1hn-7D5XJnurXBDK6FRMT-79wJ8rMWTNicA@mail.gmail.com>
In-Reply-To: <CAJTo0LbZTFEEeaZ1hn-7D5XJnurXBDK6FRMT-79wJ8rMWTNicA@mail.gmail.com>
From: Joe Flowers <joe.flowers@nofreewill.com>
Date: Mon, 29 Oct 2018 09:20:40 -0400
Message-ID: <CA+4=ZEMiTA8OZSqibcnfU=_POt8+68hwcx9EGX7Ahy2R6TZOiA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Mon, 29 Oct 2018 13:20:51 -0000
X-Groupsio-MsgNum: 42938
Content-Type: multipart/mixed; boundary="0000000000000e2c5e05795df052"

--0000000000000e2c5e05795df052
Content-Type: multipart/alternative; boundary="0000000000000e2c5a05795df050"

--0000000000000e2c5a05795df050
Content-Type: text/plain; charset="UTF-8"

Thanks, Ross.

1.
Both of these commands worked:

MACHINE=wandboard bitbake core-image-x11
MACHINE=wandboard bitbake gtk+3

2.
I've attached my local.conf.

If the attachment does not go through, then I will copy and paste it into
my next message.

Thanks!

Joe
-------------------------------


On Mon, Oct 29, 2018 at 7:54 AM Burton, Ross <ross.burton@intel.com> wrote:

> Can you share your local.conf?  Does bitbake gtk+3 work?
>
> Ross
> On Mon, 29 Oct 2018 at 06:42, Joe Flowers <joe.flowers@nofreewill.com>
> wrote:
> >
> > Hello everyone,
> >
> > 1.
> > I am trying to build a core-image-sato image for a WandBoard but am
> getting stuck at this error message:
> >
> > "| No package 'gdk-x11-3.0' found"
> >
> > See below for more details.
> >
> >
> > 2.
> > I have grepped this list's archives and run into someone with the same
> problem, but a solution was never included in the thread.
> >
> > https://lists.yoctoproject.org/pipermail/yocto/2017-December/039149.html
> >
> >
> > Help please.
> >
> > Joe
> >
> > ------------------------------
> >
> > Command
> >
> > MACHINE=wandboard bitbake core-image-sato
> >
> > produces this error message:
> >
> > ...
> > ...
> > | checking for pkg-config...
> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot-native/usr/bin/pkg-config
> > | configure: WARNING: using cross tools not prefixed with host triplet
> > | checking pkg-config is at least version 0.9.0... yes
> > | checking for glib-2.0
> > |                   gmodule-export-2.0
> > |                   x11
> > |                   gdk-x11-3.0
> > |                   gtk+-3.0... no
> > | configure: error: Package requirements (glib-2.0
> > |                   gmodule-export-2.0
> > |                   x11
> > |                   gdk-x11-3.0
> > |                   gtk+-3.0) were not met:
> > |
> > | No package 'gdk-x11-3.0' found
> > |
> > | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> > | installed software in a non-standard prefix.
> > |
> > | Alternatively, you may set the environment variables
> MATCHBOX_PANEL_CFLAGS
> > | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
> > | See the pkg-config man page for more details.
> > | NOTE: The following config.log files may provide further information.
> > | NOTE:
> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/build/config.log
> > | ERROR: configure failed
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_configure (log file is located at
> /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.40754)
> > ERROR: Task
> (/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure)
> failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 3024 tasks of which 2828 didn't need to
> be rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >
>  /opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:
> do_configure
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> > joe@ubuntu:/opt/yocto/build$
> >
> > ------------------------------
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000000e2c5a05795df050
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks, Ross.<div><br></div><div>1.</div>=
<div><div>Both of these commands worked:</div><div><br></div><div>MACHINE=
=3Dwandboard bitbake core-image-x11</div><div>MACHINE=3Dwandboard bitbake g=
tk+3</div></div><div><br></div><div>2.</div><div>I&#39;ve attached my local=
.conf.</div><div><br></div><div>If the attachment does not go through, then=
 I will copy and paste it into my next message.</div><div><br></div><div>Th=
anks!</div><div><br></div><div>Joe</div><div>------------------------------=
-</div><div><br></div><div><br></div></div><div class=3D"gmail_quote"><div =
dir=3D"ltr">On Mon, Oct 29, 2018 at 7:54 AM Burton, Ross &lt;<a href=3D"mai=
lto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">Can you share your local.conf?=C2=A0 Does bitb=
ake gtk+3 work?<br>
<br>
Ross<br>
On Mon, 29 Oct 2018 at 06:42, Joe Flowers &lt;<a href=3D"mailto:joe.flowers=
@nofreewill.com" target=3D"_blank">joe.flowers@nofreewill.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; 1.<br>
&gt; I am trying to build a core-image-sato image for a WandBoard but am ge=
tting stuck at this error message:<br>
&gt;<br>
&gt; &quot;| No package &#39;gdk-x11-3.0&#39; found&quot;<br>
&gt;<br>
&gt; See below for more details.<br>
&gt;<br>
&gt;<br>
&gt; 2.<br>
&gt; I have grepped this list&#39;s archives and run into someone with the =
same problem, but a solution was never included in the thread.<br>
&gt;<br>
&gt; <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2017-Decembe=
r/039149.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/pipermail/yocto/2017-December/039149.html</a><br>
&gt;<br>
&gt;<br>
&gt; Help please.<br>
&gt;<br>
&gt; Joe<br>
&gt;<br>
&gt; ------------------------------<br>
&gt;<br>
&gt; Command<br>
&gt;<br>
&gt; MACHINE=3Dwandboard bitbake core-image-sato<br>
&gt;<br>
&gt; produces this error message:<br>
&gt;<br>
&gt; ...<br>
&gt; ...<br>
&gt; | checking for pkg-config... /opt/yocto/build/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot-native/usr/bin/=
pkg-config<br>
&gt; | configure: WARNING: using cross tools not prefixed with host triplet=
<br>
&gt; | checking pkg-config is at least version 0.9.0... yes<br>
&gt; | checking for glib-2.0<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
gmodule-export-2.0<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
x11<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
gdk-x11-3.0<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
gtk+-3.0... no<br>
&gt; | configure: error: Package requirements (glib-2.0<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
gmodule-export-2.0<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
x11<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
gdk-x11-3.0<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
gtk+-3.0) were not met:<br>
&gt; |<br>
&gt; | No package &#39;gdk-x11-3.0&#39; found<br>
&gt; |<br>
&gt; | Consider adjusting the PKG_CONFIG_PATH environment variable if you<b=
r>
&gt; | installed software in a non-standard prefix.<br>
&gt; |<br>
&gt; | Alternatively, you may set the environment variables MATCHBOX_PANEL_=
CFLAGS<br>
&gt; | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.<br>
&gt; | See the pkg-config man page for more details.<br>
&gt; | NOTE: The following config.log files may provide further information=
.<br>
&gt; | NOTE: /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/m=
atchbox-panel-2/2.11-r0/build/config.log<br>
&gt; | ERROR: configure failed<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_configure (log file is located at /opt/yo=
cto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11=
-r0/temp/log.do_configure.40754)<br>
&gt; ERROR: Task (/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-=
2/matchbox-panel-2_2.11.bb:do_configure) failed with exit code &#39;1&#39;<=
br>
&gt; NOTE: Tasks Summary: Attempted 3024 tasks of which 2828 didn&#39;t nee=
d to be rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2=
/matchbox-panel-2_2.11.bb:do_configure<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt; joe@ubuntu:/opt/yocto/build$<br>
&gt;<br>
&gt; ------------------------------<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div></div>

--0000000000000e2c5a05795df050--

--0000000000000e2c5e05795df052
Content-Type: application/octet-stream; name="local.conf"
Content-Disposition: attachment; filename="local.conf"
Content-Transfer-Encoding: base64
Content-ID: <f_jnubzlv40>
X-Attachment-Id: f_jnubzlv40

IwojIFRoaXMgZmlsZSBpcyB5b3VyIGxvY2FsIGNvbmZpZ3VyYXRpb24gZmlsZSBhbmQgaXMgd2hl
cmUgYWxsIGxvY2FsIHVzZXIgc2V0dGluZ3MKIyBhcmUgcGxhY2VkLiBUaGUgY29tbWVudHMgaW4g
dGhpcyBmaWxlIGdpdmUgc29tZSBndWlkZSB0byB0aGUgb3B0aW9ucyBhIG5ldyB1c2VyCiMgdG8g
dGhlIHN5c3RlbSBtaWdodCB3YW50IHRvIGNoYW5nZSBidXQgcHJldHR5IG11Y2ggYW55IGNvbmZp
Z3VyYXRpb24gb3B0aW9uIGNhbgojIGJlIHNldCBpbiB0aGlzIGZpbGUuIE1vcmUgYWR2ZW50dXJv
dXMgdXNlcnMgY2FuIGxvb2sgYXQgbG9jYWwuY29uZi5leHRlbmRlZAojIHdoaWNoIGNvbnRhaW5z
IG90aGVyIGV4YW1wbGVzIG9mIGNvbmZpZ3VyYXRpb24gd2hpY2ggY2FuIGJlIHBsYWNlZCBpbiB0
aGlzIGZpbGUKIyBidXQgbmV3IHVzZXJzIGxpa2VseSB3b24ndCBuZWVkIGFueSBvZiB0aGVtIGlu
aXRpYWxseS4KIwojIExpbmVzIHN0YXJ0aW5nIHdpdGggdGhlICcjJyBjaGFyYWN0ZXIgYXJlIGNv
bW1lbnRlZCBvdXQgYW5kIGluIHNvbWUgY2FzZXMgdGhlCiMgZGVmYXVsdCB2YWx1ZXMgYXJlIHBy
b3ZpZGVkIGFzIGNvbW1lbnRzIHRvIHNob3cgcGVvcGxlIGV4YW1wbGUgc3ludGF4LiBFbmFibGlu
ZwojIHRoZSBvcHRpb24gaXMgYSBxdWVzdGlvbiBvZiByZW1vdmluZyB0aGUgIyBjaGFyYWN0ZXIg
YW5kIG1ha2luZyBhbnkgY2hhbmdlIHRvIHRoZQojIHZhcmlhYmxlIGFzIHJlcXVpcmVkLgoKIwoj
IE1hY2hpbmUgU2VsZWN0aW9uCiMKIyBZb3UgbmVlZCB0byBzZWxlY3QgYSBzcGVjaWZpYyBtYWNo
aW5lIHRvIHRhcmdldCB0aGUgYnVpbGQgd2l0aC4gVGhlcmUgYXJlIGEgc2VsZWN0aW9uCiMgb2Yg
ZW11bGF0ZWQgbWFjaGluZXMgYXZhaWxhYmxlIHdoaWNoIGNhbiBib290IGFuZCBydW4gaW4gdGhl
IFFFTVUgZW11bGF0b3I6CiMKI01BQ0hJTkUgPz0gInFlbXVhcm0iCiNNQUNISU5FID89ICJxZW11
YXJtNjQiCiNNQUNISU5FID89ICJxZW11bWlwcyIKI01BQ0hJTkUgPz0gInFlbXVtaXBzNjQiCiNN
QUNISU5FID89ICJxZW11cHBjIgojTUFDSElORSA/PSAicWVtdXg4NiIKI01BQ0hJTkUgPz0gInFl
bXV4ODYtNjQiCiMKIyBUaGVyZSBhcmUgYWxzbyB0aGUgZm9sbG93aW5nIGhhcmR3YXJlIGJvYXJk
IHRhcmdldCBtYWNoaW5lcyBpbmNsdWRlZCBmb3IgCiMgZGVtb25zdHJhdGlvbiBwdXJwb3NlczoK
IwojTUFDSElORSA/PSAiYmVhZ2xlYm9uZSIKI01BQ0hJTkUgPz0gImdlbmVyaWN4ODYiCiNNQUNI
SU5FID89ICJnZW5lcmljeDg2LTY0IgojTUFDSElORSA/PSAibXBjODMxNWUtcmRiIgojTUFDSElO
RSA/PSAiZWRnZXJvdXRlciIKIwojIFRoaXMgc2V0cyB0aGUgZGVmYXVsdCBtYWNoaW5lIHRvIGJl
IHFlbXV4ODYgaWYgbm8gb3RoZXIgbWFjaGluZSBpcyBzZWxlY3RlZDoKTUFDSElORSA/Pz0gInFl
bXV4ODYiCgojCiMgV2hlcmUgdG8gcGxhY2UgZG93bmxvYWRzCiMKIyBEdXJpbmcgYSBmaXJzdCBi
dWlsZCB0aGUgc3lzdGVtIHdpbGwgZG93bmxvYWQgbWFueSBkaWZmZXJlbnQgc291cmNlIGNvZGUg
dGFyYmFsbHMKIyBmcm9tIHZhcmlvdXMgdXBzdHJlYW0gcHJvamVjdHMuIFRoaXMgY2FuIHRha2Ug
YSB3aGlsZSwgcGFydGljdWxhcmx5IGlmIHlvdXIgbmV0d29yawojIGNvbm5lY3Rpb24gaXMgc2xv
dy4gVGhlc2UgYXJlIGFsbCBzdG9yZWQgaW4gRExfRElSLiBXaGVuIHdpcGluZyBhbmQgcmVidWls
ZGluZyB5b3UKIyBjYW4gcHJlc2VydmUgdGhpcyBkaXJlY3RvcnkgdG8gc3BlZWQgdXAgdGhpcyBw
YXJ0IG9mIHN1YnNlcXVlbnQgYnVpbGRzLiBUaGlzIGRpcmVjdG9yeQojIGlzIHNhZmUgdG8gc2hh
cmUgYmV0d2VlbiBtdWx0aXBsZSBidWlsZHMgb24gdGhlIHNhbWUgbWFjaGluZSB0b28uCiMKIyBU
aGUgZGVmYXVsdCBpcyBhIGRvd25sb2FkcyBkaXJlY3RvcnkgdW5kZXIgVE9QRElSIHdoaWNoIGlz
IHRoZSBidWlsZCBkaXJlY3RvcnkuCiMKI0RMX0RJUiA/PSAiJHtUT1BESVJ9L2Rvd25sb2FkcyIK
CiMKIyBXaGVyZSB0byBwbGFjZSBzaGFyZWQtc3RhdGUgZmlsZXMKIwojIEJpdEJha2UgaGFzIHRo
ZSBjYXBhYmlsaXR5IHRvIGFjY2VsZXJhdGUgYnVpbGRzIGJhc2VkIG9uIHByZXZpb3VzbHkgYnVp
bHQgb3V0cHV0LgojIFRoaXMgaXMgZG9uZSB1c2luZyAic2hhcmVkIHN0YXRlIiBmaWxlcyB3aGlj
aCBjYW4gYmUgdGhvdWdodCBvZiBhcyBjYWNoZSBvYmplY3RzCiMgYW5kIHRoaXMgb3B0aW9uIGRl
dGVybWluZXMgd2hlcmUgdGhvc2UgZmlsZXMgYXJlIHBsYWNlZC4KIwojIFlvdSBjYW4gd2lwZSBv
dXQgVE1QRElSIGxlYXZpbmcgdGhpcyBkaXJlY3RvcnkgaW50YWN0IGFuZCB0aGUgYnVpbGQgd291
bGQgcmVnZW5lcmF0ZQojIGZyb20gdGhlc2UgZmlsZXMgaWYgbm8gY2hhbmdlcyB3ZXJlIG1hZGUg
dG8gdGhlIGNvbmZpZ3VyYXRpb24uIElmIGNoYW5nZXMgd2VyZSBtYWRlCiMgdG8gdGhlIGNvbmZp
Z3VyYXRpb24sIG9ubHkgc2hhcmVkIHN0YXRlIGZpbGVzIHdoZXJlIHRoZSBzdGF0ZSB3YXMgc3Rp
bGwgdmFsaWQgd291bGQKIyBiZSB1c2VkIChkb25lIHVzaW5nIGNoZWNrc3VtcykuCiMKIyBUaGUg
ZGVmYXVsdCBpcyBhIHNzdGF0ZS1jYWNoZSBkaXJlY3RvcnkgdW5kZXIgVE9QRElSLgojCiNTU1RB
VEVfRElSID89ICIke1RPUERJUn0vc3N0YXRlLWNhY2hlIgoKIwojIFdoZXJlIHRvIHBsYWNlIHRo
ZSBidWlsZCBvdXRwdXQKIwojIFRoaXMgb3B0aW9uIHNwZWNpZmllcyB3aGVyZSB0aGUgYnVsayBv
ZiB0aGUgYnVpbGRpbmcgd29yayBzaG91bGQgYmUgZG9uZSBhbmQKIyB3aGVyZSBCaXRCYWtlIHNo
b3VsZCBwbGFjZSBpdHMgdGVtcG9yYXJ5IGZpbGVzIGFuZCBvdXRwdXQuIEtlZXAgaW4gbWluZCB0
aGF0CiMgdGhpcyBpbmNsdWRlcyB0aGUgZXh0cmFjdGlvbiBhbmQgY29tcGlsYXRpb24gb2YgbWFu
eSBhcHBsaWNhdGlvbnMgYW5kIHRoZSB0b29sY2hhaW4KIyB3aGljaCBjYW4gdXNlIEdpZ2FieXRl
cyBvZiBoYXJkIGRpc2sgc3BhY2UuCiMKIyBUaGUgZGVmYXVsdCBpcyBhIHRtcCBkaXJlY3Rvcnkg
dW5kZXIgVE9QRElSLgojCiNUTVBESVIgPSAiJHtUT1BESVJ9L3RtcCIKCiMKIyBEZWZhdWx0IHBv
bGljeSBjb25maWcKIwojIFRoZSBkaXN0cmlidXRpb24gc2V0dGluZyBjb250cm9scyB3aGljaCBw
b2xpY3kgc2V0dGluZ3MgYXJlIHVzZWQgYXMgZGVmYXVsdHMuCiMgVGhlIGRlZmF1bHQgdmFsdWUg
aXMgZmluZSBmb3IgZ2VuZXJhbCBZb2N0byBwcm9qZWN0IHVzZSwgYXQgbGVhc3QgaW5pdGlhbGx5
LgojIFVsdGltYXRlbHkgd2hlbiBjcmVhdGluZyBjdXN0b20gcG9saWN5LCBwZW9wbGUgd2lsbCBs
aWtlbHkgZW5kIHVwIHN1YmNsYXNzaW5nIAojIHRoZXNlIGRlZmF1bHRzLgojCkRJU1RSTyA/PSAi
cG9reSIKIyBBcyBhbiBleGFtcGxlIG9mIGEgc3ViY2xhc3MgdGhlcmUgaXMgYSAiYmxlZWRpbmci
IGVkZ2UgcG9saWN5IGNvbmZpZ3VyYXRpb24KIyB3aGVyZSBtYW55IHZlcnNpb25zIGFyZSBzZXQg
dG8gdGhlIGFic29sdXRlIGxhdGVzdCBjb2RlIGZyb20gdGhlIHVwc3RyZWFtIAojIHNvdXJjZSBj
b250cm9sIHN5c3RlbXMuIFRoaXMgaXMganVzdCBtZW50aW9uZWQgaGVyZSBhcyBhbiBleGFtcGxl
LCBpdHMgbm90CiMgdXNlZnVsIHRvIG1vc3QgbmV3IHVzZXJzLgojIERJU1RSTyA/PSAicG9reS1i
bGVlZGluZyIKCiMKIyBQYWNrYWdlIE1hbmFnZW1lbnQgY29uZmlndXJhdGlvbgojCiMgVGhpcyB2
YXJpYWJsZSBsaXN0cyB3aGljaCBwYWNrYWdpbmcgZm9ybWF0cyB0byBlbmFibGUuIE11bHRpcGxl
IHBhY2thZ2UgYmFja2VuZHMKIyBjYW4gYmUgZW5hYmxlZCBhdCBvbmNlIGFuZCB0aGUgZmlyc3Qg
aXRlbSBsaXN0ZWQgaW4gdGhlIHZhcmlhYmxlIHdpbGwgYmUgdXNlZAojIHRvIGdlbmVyYXRlIHRo
ZSByb290IGZpbGVzeXN0ZW1zLgojIE9wdGlvbnMgYXJlOgojICAtICdwYWNrYWdlX2RlYicgZm9y
IGRlYmlhbiBzdHlsZSBkZWIgZmlsZXMKIyAgLSAncGFja2FnZV9pcGsnIGZvciBpcGsgZmlsZXMg
YXJlIHVzZWQgYnkgb3BrZyAoYSBkZWJpYW4gc3R5bGUgZW1iZWRkZWQgcGFja2FnZSBtYW5hZ2Vy
KQojICAtICdwYWNrYWdlX3JwbScgZm9yIHJwbSBzdHlsZSBwYWNrYWdlcwojIEUuZy46IFBBQ0tB
R0VfQ0xBU1NFUyA/PSAicGFja2FnZV9ycG0gcGFja2FnZV9kZWIgcGFja2FnZV9pcGsiCiMgV2Ug
ZGVmYXVsdCB0byBycG06ClBBQ0tBR0VfQ0xBU1NFUyA/PSAicGFja2FnZV9ycG0iCgojCiMgU0RL
IHRhcmdldCBhcmNoaXRlY3R1cmUKIwojIFRoaXMgdmFyaWFibGUgc3BlY2lmaWVzIHRoZSBhcmNo
aXRlY3R1cmUgdG8gYnVpbGQgU0RLIGl0ZW1zIGZvciBhbmQgbWVhbnMKIyB5b3UgY2FuIGJ1aWxk
IHRoZSBTREsgcGFja2FnZXMgZm9yIGFyY2hpdGVjdHVyZXMgb3RoZXIgdGhhbiB0aGUgbWFjaGlu
ZSB5b3UgYXJlCiMgcnVubmluZyB0aGUgYnVpbGQgb24gKGkuZS4gYnVpbGRpbmcgaTY4NiBwYWNr
YWdlcyBvbiBhbiB4ODZfNjQgaG9zdCkuCiMgU3VwcG9ydGVkIHZhbHVlcyBhcmUgaTY4NiBhbmQg
eDg2XzY0CiNTREtNQUNISU5FID89ICJpNjg2IgoKIwojIEV4dHJhIGltYWdlIGNvbmZpZ3VyYXRp
b24gZGVmYXVsdHMKIwojIFRoZSBFWFRSQV9JTUFHRV9GRUFUVVJFUyB2YXJpYWJsZSBhbGxvd3Mg
ZXh0cmEgcGFja2FnZXMgdG8gYmUgYWRkZWQgdG8gdGhlIGdlbmVyYXRlZAojIGltYWdlcy4gU29t
ZSBvZiB0aGVzZSBvcHRpb25zIGFyZSBhZGRlZCB0byBjZXJ0YWluIGltYWdlIHR5cGVzIGF1dG9t
YXRpY2FsbHkuIFRoZQojIHZhcmlhYmxlIGNhbiBjb250YWluIHRoZSBmb2xsb3dpbmcgb3B0aW9u
czoKIyAgImRiZy1wa2dzIiAgICAgICAtIGFkZCAtZGJnIHBhY2thZ2VzIGZvciBhbGwgaW5zdGFs
bGVkIHBhY2thZ2VzCiMgICAgICAgICAgICAgICAgICAgICAoYWRkcyBzeW1ib2wgaW5mb3JtYXRp
b24gZm9yIGRlYnVnZ2luZy9wcm9maWxpbmcpCiMgICJkZXYtcGtncyIgICAgICAgLSBhZGQgLWRl
diBwYWNrYWdlcyBmb3IgYWxsIGluc3RhbGxlZCBwYWNrYWdlcwojICAgICAgICAgICAgICAgICAg
ICAgKHVzZWZ1bCBpZiB5b3Ugd2FudCB0byBkZXZlbG9wIGFnYWluc3QgbGlicyBpbiB0aGUgaW1h
Z2UpCiMgICJwdGVzdC1wa2dzIiAgICAgLSBhZGQgLXB0ZXN0IHBhY2thZ2VzIGZvciBhbGwgcHRl
c3QtZW5hYmxlZCBwYWNrYWdlcwojICAgICAgICAgICAgICAgICAgICAgKHVzZWZ1bCBpZiB5b3Ug
d2FudCB0byBydW4gdGhlIHBhY2thZ2UgdGVzdCBzdWl0ZXMpCiMgICJ0b29scy1zZGsiICAgICAg
LSBhZGQgZGV2ZWxvcG1lbnQgdG9vbHMgKGdjYywgbWFrZSwgcGtnY29uZmlnIGV0Yy4pCiMgICJ0
b29scy1kZWJ1ZyIgICAgLSBhZGQgZGVidWdnaW5nIHRvb2xzIChnZGIsIHN0cmFjZSkKIyAgImVj
bGlwc2UtZGVidWciICAtIGFkZCBFY2xpcHNlIHJlbW90ZSBkZWJ1Z2dpbmcgc3VwcG9ydAojICAi
dG9vbHMtcHJvZmlsZSIgIC0gYWRkIHByb2ZpbGluZyB0b29scyAob3Byb2ZpbGUsIGx0dG5nLCB2
YWxncmluZCkKIyAgInRvb2xzLXRlc3RhcHBzIiAtIGFkZCB1c2VmdWwgdGVzdGluZyB0b29scyAo
dHNfcHJpbnQsIGFwbGF5LCBhcmVjb3JkIGV0Yy4pCiMgICJkZWJ1Zy10d2Vha3MiICAgLSBtYWtl
IGFuIGltYWdlIHN1aXRhYmxlIGZvciBkZXZlbG9wbWVudAojICAgICAgICAgICAgICAgICAgICAg
ZS5nLiBzc2ggcm9vdCBhY2Nlc3MgaGFzIGEgYmxhbmsgcGFzc3dvcmQKIyBUaGVyZSBhcmUgb3Ro
ZXIgYXBwbGljYXRpb24gdGFyZ2V0cyB0aGF0IGNhbiBiZSB1c2VkIGhlcmUgdG9vLCBzZWUKIyBt
ZXRhL2NsYXNzZXMvaW1hZ2UuYmJjbGFzcyBhbmQgbWV0YS9jbGFzc2VzL2NvcmUtaW1hZ2UuYmJj
bGFzcyBmb3IgbW9yZSBkZXRhaWxzLgojIFdlIGRlZmF1bHQgdG8gZW5hYmxpbmcgdGhlIGRlYnVn
Z2luZyB0d2Vha3MuCkVYVFJBX0lNQUdFX0ZFQVRVUkVTID89ICJkZWJ1Zy10d2Vha3MiCgojCiMg
QWRkaXRpb25hbCBpbWFnZSBmZWF0dXJlcwojCiMgVGhlIGZvbGxvd2luZyBpcyBhIGxpc3Qgb2Yg
YWRkaXRpb25hbCBjbGFzc2VzIHRvIHVzZSB3aGVuIGJ1aWxkaW5nIGltYWdlcyB3aGljaAojIGVu
YWJsZSBleHRyYSBmZWF0dXJlcy4gU29tZSBhdmFpbGFibGUgb3B0aW9ucyB3aGljaCBjYW4gYmUg
aW5jbHVkZWQgaW4gdGhpcyB2YXJpYWJsZQojIGFyZToKIyAgIC0gJ2J1aWxkc3RhdHMnIGNvbGxl
Y3QgYnVpbGQgc3RhdGlzdGljcwojICAgLSAnaW1hZ2UtbWtsaWJzJyB0byByZWR1Y2Ugc2hhcmVk
IGxpYnJhcnkgZmlsZXMgc2l6ZSBmb3IgYW4gaW1hZ2UKIyAgIC0gJ2ltYWdlLXByZWxpbmsnIGlu
IG9yZGVyIHRvIHByZWxpbmsgdGhlIGZpbGVzeXN0ZW0gaW1hZ2UKIyBOT1RFOiBpZiBsaXN0aW5n
IG1rbGlicyAmIHByZWxpbmsgYm90aCwgdGhlbiBtYWtlIHN1cmUgbWtsaWJzIGlzIGJlZm9yZSBw
cmVsaW5rCiMgTk9URTogbWtsaWJzIGFsc28gbmVlZHMgdG8gYmUgZXhwbGljaXRseSBlbmFibGVk
IGZvciBhIGdpdmVuIGltYWdlLCBzZWUgbG9jYWwuY29uZi5leHRlbmRlZApVU0VSX0NMQVNTRVMg
Pz0gImJ1aWxkc3RhdHMgaW1hZ2UtbWtsaWJzIGltYWdlLXByZWxpbmsiCgojCiMgUnVudGltZSB0
ZXN0aW5nIG9mIGltYWdlcwojCiMgVGhlIGJ1aWxkIHN5c3RlbSBjYW4gdGVzdCBib290aW5nIHZp
cnR1YWwgbWFjaGluZSBpbWFnZXMgdW5kZXIgcWVtdSAoYW4gZW11bGF0b3IpCiMgYWZ0ZXIgYW55
IHJvb3QgZmlsZXN5c3RlbXMgYXJlIGNyZWF0ZWQgYW5kIHJ1biB0ZXN0cyBhZ2FpbnN0IHRob3Nl
IGltYWdlcy4gVG8KIyBlbmFibGUgdGhpcyB1bmNvbW1lbnQgdGhpcyBsaW5lLiBTZWUgY2xhc3Nl
cy90ZXN0aW1hZ2UoLWF1dG8pLmJiY2xhc3MgZm9yCiMgZnVydGhlciBkZXRhaWxzLgojVEVTVF9J
TUFHRSA9ICIxIgojCiMgSW50ZXJhY3RpdmUgc2hlbGwgY29uZmlndXJhdGlvbgojCiMgVW5kZXIg
Y2VydGFpbiBjaXJjdW1zdGFuY2VzIHRoZSBzeXN0ZW0gbWF5IG5lZWQgaW5wdXQgZnJvbSB5b3Ug
YW5kIHRvIGRvIHRoaXMgaXQKIyBjYW4gbGF1bmNoIGFuIGludGVyYWN0aXZlIHNoZWxsLiBJdCBu
ZWVkcyB0byBkbyB0aGlzIHNpbmNlIHRoZSBidWlsZCBpcwojIG11bHRpdGhyZWFkZWQgYW5kIG5l
ZWRzIHRvIGJlIGFibGUgdG8gaGFuZGxlIHRoZSBjYXNlIHdoZXJlIG1vcmUgdGhhbiBvbmUgcGFy
YWxsZWwKIyBwcm9jZXNzIG1heSByZXF1aXJlIHRoZSB1c2VyJ3MgYXR0ZW50aW9uLiBUaGUgZGVm
YXVsdCBpcyBpdGVyYXRlIG92ZXIgdGhlIGF2YWlsYWJsZQojIHRlcm1pbmFsIHR5cGVzIHRvIGZp
bmQgb25lIHRoYXQgd29ya3MuCiMKIyBFeGFtcGxlcyBvZiB0aGUgb2NjYXNpb25zIHRoaXMgbWF5
IGhhcHBlbiBhcmUgd2hlbiByZXNvbHZpbmcgcGF0Y2hlcyB3aGljaCBjYW5ub3QKIyBiZSBhcHBs
aWVkLCB0byB1c2UgdGhlIGRldnNoZWxsIG9yIHRoZSBrZXJuZWwgbWVudWNvbmZpZwojCiMgU3Vw
cG9ydGVkIHZhbHVlcyBhcmUgYXV0bywgZ25vbWUsIHhmY2UsIHJ4dnQsIHNjcmVlbiwga29uc29s
ZSAoS0RFIDMueCBvbmx5KSwgbm9uZQojIE5vdGU6IGN1cnJlbnRseSwgS29uc29sZSBzdXBwb3J0
IG9ubHkgd29ya3MgZm9yIEtERSAzLnggZHVlIHRvIHRoZSB3YXkKIyBuZXdlciBLb25zb2xlIHZl
cnNpb25zIGJlaGF2ZQojT0VfVEVSTUlOQUwgPSAiYXV0byIKIyBCeSBkZWZhdWx0IGRpc2FibGUg
aW50ZXJhY3RpdmUgcGF0Y2ggcmVzb2x1dGlvbiAodGFza3Mgd2lsbCBqdXN0IGZhaWwgaW5zdGVh
ZCk6ClBBVENIUkVTT0xWRSA9ICJub29wIgoKIwojIERpc2sgU3BhY2UgTW9uaXRvcmluZyBkdXJp
bmcgdGhlIGJ1aWxkCiMKIyBNb25pdG9yIHRoZSBkaXNrIHNwYWNlIGR1cmluZyB0aGUgYnVpbGQu
IElmIHRoZXJlIGlzIGxlc3MgdGhhdCAxR0Igb2Ygc3BhY2Ugb3IgbGVzcwojIHRoYW4gMTAwSyBp
bm9kZXMgaW4gYW55IGtleSBidWlsZCBsb2NhdGlvbiAoVE1QRElSLCBETF9ESVIsIFNTVEFURV9E
SVIpLCBncmFjZWZ1bGx5CiMgc2h1dGRvd24gdGhlIGJ1aWxkLiBJZiB0aGVyZSBpcyBsZXNzIHRo
YXQgMTAwTUIgb3IgMUsgaW5vZGVzLCBwZXJmb3JtIGEgaGFyZCBhYm9ydAojIG9mIHRoZSBidWls
ZC4gVGhlIHJlYXNvbiBmb3IgdGhpcyBpcyB0aGF0IHJ1bm5pbmcgY29tcGxldGVseSBvdXQgb2Yg
c3BhY2UgY2FuIGNvcnJ1cHQKIyBmaWxlcyBhbmQgZGFtYWdlcyB0aGUgYnVpbGQgaW4gd2F5cyB3
aGljaCBtYXkgbm90IGJlIGVhc2lseSByZWNvdmVyYWJsZS4KIyBJdCdzIG5lY2VzYXJ5IHRvIG1v
bml0b3IgL3RtcCwgaWYgdGhlcmUgaXMgbm8gc3BhY2UgbGVmdCB0aGUgYnVpbGQgd2lsbCBmYWls
CiMgd2l0aCB2ZXJ5IGV4b3RpYyBlcnJvcnMuCkJCX0RJU0tNT05fRElSUyA/Pz0gIlwKICAgIFNU
T1BUQVNLUywke1RNUERJUn0sMUcsMTAwSyBcCiAgICBTVE9QVEFTS1MsJHtETF9ESVJ9LDFHLDEw
MEsgXAogICAgU1RPUFRBU0tTLCR7U1NUQVRFX0RJUn0sMUcsMTAwSyBcCiAgICBTVE9QVEFTS1Ms
L3RtcCwxMDBNLDEwMEsgXAogICAgQUJPUlQsJHtUTVBESVJ9LDEwME0sMUsgXAogICAgQUJPUlQs
JHtETF9ESVJ9LDEwME0sMUsgXAogICAgQUJPUlQsJHtTU1RBVEVfRElSfSwxMDBNLDFLIFwKICAg
IEFCT1JULC90bXAsMTBNLDFLIgoKIwojIFNoYXJlZC1zdGF0ZSBmaWxlcyBmcm9tIG90aGVyIGxv
Y2F0aW9ucwojCiMgQXMgbWVudGlvbmVkIGFib3ZlLCBzaGFyZWQgc3RhdGUgZmlsZXMgYXJlIHBy
ZWJ1aWx0IGNhY2hlIGRhdGEgb2JqZWN0cyB3aGljaCBjYW4KIyB1c2VkIHRvIGFjY2VsZXJhdGUg
YnVpbGQgdGltZS4gVGhpcyB2YXJpYWJsZSBjYW4gYmUgdXNlZCB0byBjb25maWd1cmUgdGhlIHN5
c3RlbQojIHRvIHNlYXJjaCBvdGhlciBtaXJyb3IgbG9jYXRpb25zIGZvciB0aGVzZSBvYmplY3Rz
IGJlZm9yZSBpdCBidWlsZHMgdGhlIGRhdGEgaXRzZWxmLgojCiMgVGhpcyBjYW4gYmUgYSBmaWxl
c3lzdGVtIGRpcmVjdG9yeSwgb3IgYSByZW1vdGUgdXJsIHN1Y2ggYXMgaHR0cCBvciBmdHAuIFRo
ZXNlCiMgd291bGQgY29udGFpbiB0aGUgc3N0YXRlLWNhY2hlIHJlc3VsdHMgZnJvbSBwcmV2aW91
cyBidWlsZHMgKHBvc3NpYmx5IGZyb20gb3RoZXIKIyBtYWNoaW5lcykuIFRoaXMgdmFyaWFibGUg
d29ya3MgbGlrZSBmZXRjaGVyIE1JUlJPUlMvUFJFTUlSUk9SUyBhbmQgcG9pbnRzIHRvIHRoZQoj
IGNhY2hlIGxvY2F0aW9ucyB0byBjaGVjayBmb3IgdGhlIHNoYXJlZCBvYmplY3RzLgojIE5PVEU6
IGlmIHRoZSBtaXJyb3IgdXNlcyB0aGUgc2FtZSBzdHJ1Y3R1cmUgYXMgU1NUQVRFX0RJUiwgeW91
IG5lZWQgdG8gYWRkIFBBVEgKIyBhdCB0aGUgZW5kIGFzIHNob3duIGluIHRoZSBleGFtcGxlcyBi
ZWxvdy4gVGhpcyB3aWxsIGJlIHN1YnN0aXR1dGVkIHdpdGggdGhlCiMgY29ycmVjdCBwYXRoIHdp
dGhpbiB0aGUgZGlyZWN0b3J5IHN0cnVjdHVyZS4KI1NTVEFURV9NSVJST1JTID89ICJcCiNmaWxl
Oi8vLiogaHR0cDovL3NvbWVzZXJ2ZXIudGxkL3NoYXJlL3NzdGF0ZS9QQVRIO2Rvd25sb2FkZmls
ZW5hbWU9UEFUSCBcbiBcCiNmaWxlOi8vLiogZmlsZTovLy9zb21lL2xvY2FsL2Rpci9zc3RhdGUv
UEFUSCIKCgojCiMgUWVtdSBjb25maWd1cmF0aW9uCiMKIyBCeSBkZWZhdWx0IHFlbXUgd2lsbCBi
dWlsZCB3aXRoIGEgYnVpbHRpbiBWTkMgc2VydmVyIHdoZXJlIGdyYXBoaWNhbCBvdXRwdXQgY2Fu
IGJlCiMgc2Vlbi4gVGhlIHR3byBsaW5lcyBiZWxvdyBlbmFibGUgdGhlIFNETCBiYWNrZW5kIHRv
by4gQnkgZGVmYXVsdCBsaWJzZGwtbmF0aXZlIHdpbGwKIyBiZSBidWlsdCwgaWYgeW91IHdhbnQg
dG8gdXNlIHlvdXIgaG9zdCdzIGxpYlNETCBpbnN0ZWFkIG9mIHRoZSBtaW5pbWFsIGxpYnNkbCBi
dWlsdAojIGJ5IGxpYnNkbC1uYXRpdmUgdGhlbiB1bmNvbW1lbnQgdGhlIEFTU1VNRV9QUk9WSURF
RCBsaW5lIGJlbG93LgpQQUNLQUdFQ09ORklHX2FwcGVuZF9wbi1xZW11LW5hdGl2ZSA9ICIgc2Rs
IgpQQUNLQUdFQ09ORklHX2FwcGVuZF9wbi1uYXRpdmVzZGstcWVtdSA9ICIgc2RsIgojQVNTVU1F
X1BST1ZJREVEICs9ICJsaWJzZGwtbmF0aXZlIgoKIyBDT05GX1ZFUlNJT04gaXMgaW5jcmVhc2Vk
IGVhY2ggdGltZSBidWlsZC9jb25mLyBjaGFuZ2VzIGluY29tcGF0aWJseSBhbmQgaXMgdXNlZCB0
bwojIHRyYWNrIHRoZSB2ZXJzaW9uIG9mIHRoaXMgZmlsZSB3aGVuIGl0IHdhcyBnZW5lcmF0ZWQu
IFRoaXMgY2FuIHNhZmVseSBiZSBpZ25vcmVkIGlmCiMgdGhpcyBkb2Vzbid0IG1lYW4gYW55dGhp
bmcgdG8geW91LgpDT05GX1ZFUlNJT04gPSAiMSIKCgpBQ0NFUFRfRlNMX0VVTEEgPSAiMSIKRElT
VFJPX0ZFQVRVUkVTX2FwcGVuZCA9ICIgeDExIgoK

--0000000000000e2c5e05795df052--
