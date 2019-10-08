Return-Path: <jku@goto.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 275EEE00D16; Mon,  7 Oct 2019 23:59:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A6E8E0096F
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2019 23:59:46 -0700 (PDT)
Received: by mail-lj1-f193.google.com with SMTP id 7so16300170ljw.7
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2019 23:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goto.fi; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=orVYvhxCNYAZqzWGoBQrJBysbvYC5Oi+KkkKDW4mupk=;
	b=B9t3MCgc6V/jjuONr7BLBUZUulSJTXUuOZpDxjJYhU9v12BoTlRdj2Ak3BCiPnAlnn
	vm+mOvUZyc+RFR1AsLfaCtFwq8tzUiNMWDkBQF2+yxxJ95SS0HPR1W2Hpgw8MD3N10+Q
	IJV2RI1k4nYLv8nsOe+61hekxrTutgWHwaIfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=orVYvhxCNYAZqzWGoBQrJBysbvYC5Oi+KkkKDW4mupk=;
	b=dH6WE2nXKaIk1GVb+RkZY3eSNhXvUTwuPqCH8TTLX3MoOZr6JidLkyWm5aLeg4amBA
	ERbLpmFYRpImN5BTGTwOzDa28M/P/uShcmr7vh8z6/x5AsX9gXPVZlO+uzybTXhjWj3R
	/R5oeKUCNtdy/Gxxxm5sBvSF7bal/UlSin4P0FDMxq5d/lNWmGbFrSv/VsiXD0woeZ6H
	Fbp1d0tNiw1mZHnkNBpXbNVvF5RpeCRS1QJMeUO/DZIw2rCj3Y5c2tGqXLcaTrNZEBzy
	zzyzAchXpzx3LDVZfm7HboRXxzlZ1sybD9L0T7xmMTwnxeGbs0r87UZko8du0L+cXSHi
	uGqQ==
X-Gm-Message-State: APjAAAVM2IYN1ekGMOxGf8B5f1RbSu8ZrVDsHNrrmzzdap52twz4Jv2T
	yiJhwGbc3ySOTMTJ8UB3q4bvR8QnaaxhaBLXg+/IJw==
X-Google-Smtp-Source: APXvYqw1hpwb/0nUPuvsdDDpn5X2hYUhe51bBqLCi3A5+zqi7iiMFjCYXFFMJJ/5pAKT/z/MA+Le3b0ZkBSQwoAjT9Q=
X-Received: by 2002:a2e:b4c5:: with SMTP id r5mr15063575ljm.54.1570517985497; 
	Mon, 07 Oct 2019 23:59:45 -0700 (PDT)
MIME-Version: 1.0
References: <CY4PR15MB18783DA507FC9EBF565795B5FD9D0@CY4PR15MB1878.namprd15.prod.outlook.com>
	<32b01f41-be72-d9b3-61d6-d3cd843f690a@kernel.crashing.org>
In-Reply-To: <32b01f41-be72-d9b3-61d6-d3cd843f690a@kernel.crashing.org>
From: Jussi Kukkonen <jku@goto.fi>
Date: Tue, 8 Oct 2019 09:59:29 +0300
Message-ID: <CAD5=o+omWqpwNLjzGXbbZLii5UC39VAK00iFi39N4=FDC4_8EQ@mail.gmail.com>
To: Mark Hatle <mark.hatle@kernel.crashing.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "C M,
	Kiran Reddy" <kiran.reddy@ncr.com>, "Oriya,
	Raxesh" <Raxeshkumar.Oriya@ncr.com>, "Mohammad,
	Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
Subject: Re: meta-selinux warrior support
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
X-List-Received-Date: Tue, 08 Oct 2019 06:59:49 -0000
Content-Type: multipart/alternative; boundary="000000000000a3aad0059460b61c"

--000000000000a3aad0059460b61c
Content-Type: text/plain; charset="UTF-8"

On Mon, 7 Oct 2019 at 17:57, Mark Hatle <mark.hatle@kernel.crashing.org>
wrote:

> I thought this issue was already fixed:
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?h=warrior&id=bb0c9c3abcb935e4b362eb57985e1ee7fec0bfe0
>
>
From the error log:
> glib-2.58.3

From the commit changelog
> In glib 2.60.x, it turns selinux into a meson feature.

That should explain the issue -- maybe oe-core was older than meta-selinux
or glib was older for another reason.



> This patch is what specifically adds the enabled/disabled that the system
> is
> saying (in the logs quoted below) is invalid.
>
> Can you try changing these to 'true' and 'false' instead?
>
> In the file: classes/meson-enable-selinux.bbclass
>
> --Mark
>
> On 10/1/19 1:39 AM, Oriya, Raxesh wrote:
> > Hi,
> >
> >
> >
> > I am getting the below error when I am trying to integrate
> 'meta-selinux' into
> > our yocto solution. This error also happens when I just build
> > 'core-image-selinux' by including the required layers in warrior branch.
> Can
> > anyone provide a fix for this..
> >
> >
> >
> > local.conf contains the following lines:
> >
> > ---------
> >
> > DISTRO_FEATURES_append = " acl xattr pam selinux"
> >
> > PREFERRED_PROVIDER_virtual/refpolicy ?= "refpolicy-mls"
> >
> > ---------
> >
> >
> >
> > ERROR: glib-2.0-native-1_2.58.3-r0 do_configure: meson failed
> >
> > ERROR: glib-2.0-native-1_2.58.3-r0 do_configure: Function failed:
> do_configure
> > (log file is located at
> >
> /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2.58.3-r0/temp/log.do_configure.34545)
> >
> > ERROR: Logfile of failure stored in:
> >
> /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2.58.3-r0/temp/log.do_configure.34545
> >
> > Log data follows:
> >
> > | DEBUG: Executing shell function do_configure
> >
> > | NOTE: Executing meson -Ddtrace=false -Dfam=false -Dsystemtap=false
> > -Dselinux=false -Dlibmount=true -Dman=false -Dselinux=disabled
> > -Dinternal_pcre=false -Dinstalled_tests=false...
> >
> > | The Meson build system
> >
> > | Version: 0.49.2
> >
> > | Source dir:
> >
> > | /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2
> >
> > | .58.3-r0/glib-2.58.3 Build dir:
> >
> > | /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2
> >
> > | .58.3-r0/build
> >
> > | Build type: native build
> >
> > |
> >
> > | meson.build:1:0: ERROR:  Value disabled is not boolean (true or false).
> >
> > |
> >
> > | A full log can be found at
> >
> > | /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2
> >
> > | .58.3-r0/build/meson-logs/meson-log.txt
> >
> > | ERROR: meson failed
> >
> >
> >
> > Thanks,
> >
> > Raxesh
> >
> >
> >
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000a3aad0059460b61c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, 7 Oct 2019 at 17:57, Mark Hat=
le &lt;<a href=3D"mailto:mark.hatle@kernel.crashing.org">mark.hatle@kernel.=
crashing.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">I thought this issue was already fixed:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?h=
=3Dwarrior&amp;id=3Dbb0c9c3abcb935e4b362eb57985e1ee7fec0bfe0" rel=3D"norefe=
rrer" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-seli=
nux/commit/?h=3Dwarrior&amp;id=3Dbb0c9c3abcb935e4b362eb57985e1ee7fec0bfe0</=
a><br>
<br></blockquote><div><br></div><div>From the error log:=C2=A0</div><div>&g=
t; glib-2.58.3<br></div><div><br></div><div>From the commit changelog</div>=
<div>&gt; In glib 2.60.x, it turns selinux into a meson feature.</div><div>=
<br></div><div>That should explain the issue -- maybe oe-core was older tha=
n meta-selinux or glib was older for another reason.</div><div><br></div><d=
iv>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
This patch is what specifically adds the enabled/disabled that the system i=
s<br>
saying (in the logs quoted below) is invalid.<br>
<br>
Can you try changing these to &#39;true&#39; and &#39;false&#39; instead?<b=
r>
<br>
In the file: classes/meson-enable-selinux.bbclass<br>
<br>
--Mark<br>
<br>
On 10/1/19 1:39 AM, Oriya, Raxesh wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; I am getting the below error when I am trying to integrate &#39;meta-s=
elinux&#39; into<br>
&gt; our yocto solution. This error also happens when I just build<br>
&gt; &#39;core-image-selinux&#39; by including the required layers in warri=
or branch. Can<br>
&gt; anyone provide a fix for this..<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; local.conf contains the following lines:<br>
&gt; <br>
&gt; ---------<br>
&gt; <br>
&gt; DISTRO_FEATURES_append =3D &quot; acl xattr pam selinux&quot;<br>
&gt; <br>
&gt; PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;refpolicy-mls&quot;<br=
>
&gt; <br>
&gt; ---------<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; ERROR: glib-2.0-native-1_2.58.3-r0 do_configure: meson failed<br>
&gt; <br>
&gt; ERROR: glib-2.0-native-1_2.58.3-r0 do_configure: Function failed: do_c=
onfigure<br>
&gt; (log file is located at<br>
&gt; /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2=
.58.3-r0/temp/log.do_configure.34545)<br>
&gt; <br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2=
.58.3-r0/temp/log.do_configure.34545<br>
&gt; <br>
&gt; Log data follows:<br>
&gt; <br>
&gt; | DEBUG: Executing shell function do_configure<br>
&gt; <br>
&gt; | NOTE: Executing meson -Ddtrace=3Dfalse -Dfam=3Dfalse -Dsystemtap=3Df=
alse<br>
&gt; -Dselinux=3Dfalse -Dlibmount=3Dtrue -Dman=3Dfalse -Dselinux=3Ddisabled=
<br>
&gt; -Dinternal_pcre=3Dfalse -Dinstalled_tests=3Dfalse...<br>
&gt; <br>
&gt; | The Meson build system<br>
&gt; <br>
&gt; | Version: 0.49.2<br>
&gt; <br>
&gt; | Source dir:<br>
&gt; <br>
&gt; | /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1=
_2<br>
&gt; <br>
&gt; | .58.3-r0/glib-2.58.3 Build dir:<br>
&gt; <br>
&gt; | /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1=
_2<br>
&gt; <br>
&gt; | .58.3-r0/build<br>
&gt; <br>
&gt; | Build type: native build<br>
&gt; <br>
&gt; |<br>
&gt; <br>
&gt; | meson.build:1:0: ERROR:=C2=A0 Value disabled is not boolean (true or=
 false).<br>
&gt; <br>
&gt; |<br>
&gt; <br>
&gt; | A full log can be found at<br>
&gt; <br>
&gt; | /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1=
_2<br>
&gt; <br>
&gt; | .58.3-r0/build/meson-logs/meson-log.txt<br>
&gt; <br>
&gt; | ERROR: meson failed<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; Thanks,<br>
&gt; <br>
&gt; Raxesh<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; <br>
&gt; <br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000a3aad0059460b61c--
