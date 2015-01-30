Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16896E0086F; Fri, 30 Jan 2015 06:57:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A71F9E002F9
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 06:57:31 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id a1so27245104wgh.12
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 06:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=em3AYco9m8HgFKdY9TmvjsJmP+RnYcTS+EXu+CH3ibE=;
	b=ICVSmTYaWQQ97fWqcmHb+X4VTQ45Q0fenI3DFi/9u72VDou4gQLdXbZ1TR4Fw3icmV
	gBIzze9MFscrmuOjqgswTrSTTZFHHQaoT8Kuy+eO/x6j7R2i9zjEiyDV09OwfOqXMjZ8
	+MxWs6VGWVsIuPfAJcW/Z2Kadu4/Dc9gSgYw552y7sgzX9S5LiGrlnFdBu9toP8f/y6l
	hY5ogSAARs2sanYHO+Yz+j4r4LTGZ1mf7+mrlIgCBhv2TxKUbOjpFT0IdVTz1GuPLJBE
	xtPG3YEzY7uge3Qb9Zp3UPT+i/h+SrcGw2t0cqHsyl1IyJuMJRT4oCvpo1IpP6qVTvzW
	GPdg==
X-Received: by 10.180.97.2 with SMTP id dw2mr5828665wib.6.1422629850085; Fri,
	30 Jan 2015 06:57:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.32.85 with HTTP; Fri, 30 Jan 2015 06:57:09 -0800 (PST)
In-Reply-To: <20150128200618.GK2477@jama>
References: <CAEfap_Ab0Le_sXyjZUJ3Yh-kVDQQ9sQi0sGHcB1HQx-5xQ5mnw@mail.gmail.com>
	<20150128200618.GK2477@jama>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Fri, 30 Jan 2015 15:57:09 +0100
Message-ID: <CAEfap_CfxhuEA9Ud27orT+eaPgZd3HKfNTr8wY9EQr91EWhQZg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-toolchain-qt5] Can't install qtwebkit-dev-5.3.2-r0@i586: no package provides qtwebkit = 5.3.2-r0
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
X-List-Received-Date: Fri, 30 Jan 2015 14:57:38 -0000
Content-Type: multipart/alternative; boundary=f46d0443063adc80e2050ddfd202

--f46d0443063adc80e2050ddfd202
Content-Type: text/plain; charset=UTF-8

TADA! well reading README helped ;), actually reading log.do_configure of
qtwebkit would help as well ;)

So after all, I set in qtbase.inc:

...
PACKAGECONFIG_ICU ?= "icu"
...
PACKAGECONFIG ?= " \
...
    ${PACKAGECONFIG_ICU} \
"

After that bitbake'ed meta-toolchain-qt5 again and voila! SDK .sh script
was generated alright
I have other problems now with Qt Creator compiling apps, but this will be
a story for another thread...

thank you (Martin)!
and best regards
simon:-)

On Wed, Jan 28, 2015 at 9:06 PM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> On Wed, Jan 28, 2015 at 06:15:11PM +0100, Simon Bolek wrote:
> > hello group!
> >
> > working with dizzy trying to
> > *bitbake meta-toolchain-qt5*
> > it fails at the step
> >
> > *do_populate_sdk*
> >
> > with the error(see below). So if i read the error correctly, qtwebkit-dev
> > is missing qtwebkit.
> > There is no such package as qtwebkit beeing generated :( So is this a
> bug?
> > Or maybe I am doing sth wrong?
>
> Read README file and qtbase.inc about mandatory PACKAGECONFIG options.
>
> > HELP please :) Any hint would be more than welcome.
> > *BTW: Working with daisy did not produce such an error.*
> >
> > +++
> >
> >
> >
> >
> >
> >
> > *ERROR: Unable to install packages. Command
> > '/home/simon/poky-dizzy/build/tmp/sysroots/i686-linux/usr/bin/smart
> --quiet
> >
> --data-dir=/home/simon/poky-dizzy/build/tmp/work/i586-poky-linux/meta-toolchain-qt5/1.0-r0/sdk/image/opt/poky/1.7/sysroots/i586-poky-linux/var/lib/smart
> > install -y packagegroup-core-standalone-sdk-target-dbg@all
> > packagegroup-core-standalone-sdk-target@all
> > packagegroup-qt5-toolchain-target@all' returned 1:error: Can't install
> > qtwebkit-dev-5.3.2-r0@i586: no package provides qtwebkit =
> 5.3.2-r0ERROR:
> > Function failed: do_populate_sdkERROR: Logfile of failure stored in:
> >
> /home/simon/poky-dizzy/build/tmp/work/i586-poky-linux/meta-toolchain-qt5/1.0-r0/temp/log.do_populate_sdk.20827ERROR:
> > Task 7
> > (/home/simon/poky-dizzy/sources/meta-qt5/recipes-qt/meta/
> meta-toolchain-qt5.bb
> > <http://meta-toolchain-qt5.bb>, do_populate_sdk) failed with exit code
> '1'*
> > +++
> >
> > thank you and br
> > simon:)
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--f46d0443063adc80e2050ddfd202
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">TADA! well reading README helpe=
d ;), actually reading log.do_configure of qtwebkit would help as well ;)<b=
r><br>So after all, I set in qtbase.inc:<br><br>...<br>PACKAGECONFIG_ICU ?=
=3D &quot;icu&quot;<br>...<br>PACKAGECONFIG ?=3D &quot; \<br>...<br>=C2=A0=
=C2=A0=C2=A0 ${PACKAGECONFIG_ICU} \<br>&quot;<br><br>After that bitbake&#39=
;ed meta-toolchain-qt5 again and voila! SDK .sh script was generated alrigh=
t<br>I have other problems now with Qt Creator compiling apps, but this wil=
l be a story for another thread...<br><br>thank you (Martin)!<br>and best r=
egards<br>simon:-)<br><br><div class=3D"gmail_quote">On Wed, Jan 28, 2015 a=
t 9:06 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jans=
a@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"">On W=
ed, Jan 28, 2015 at 06:15:11PM +0100, Simon Bolek wrote:<br>
&gt; hello group!<br>
&gt;<br>
&gt; working with dizzy trying to<br>
</span>&gt; *bitbake meta-toolchain-qt5*<br>
<span class=3D"">&gt; it fails at the step<br>
&gt;<br>
</span>&gt; *do_populate_sdk*<br>
<span class=3D"">&gt;<br>
&gt; with the error(see below). So if i read the error correctly, qtwebkit-=
dev<br>
&gt; is missing qtwebkit.<br>
&gt; There is no such package as qtwebkit beeing generated :( So is this a =
bug?<br>
&gt; Or maybe I am doing sth wrong?<br>
<br>
</span>Read README file and qtbase.inc about mandatory PACKAGECONFIG option=
s.<br>
<span class=3D""><br>
&gt; HELP please :) Any hint would be more than welcome.<br>
</span>&gt; *BTW: Working with daisy did not produce such an error.*<br>
&gt;<br>
&gt; +++<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; *ERROR: Unable to install packages. Command<br>
<span class=3D"">&gt; &#39;/home/simon/poky-dizzy/build/tmp/sysroots/i686-l=
inux/usr/bin/smart --quiet<br>
&gt; --data-dir=3D/home/simon/poky-dizzy/build/tmp/work/i586-poky-linux/met=
a-toolchain-qt5/1.0-r0/sdk/image/opt/poky/1.7/sysroots/i586-poky-linux/var/=
lib/smart<br>
&gt; install -y packagegroup-core-standalone-sdk-target-dbg@all<br>
&gt; packagegroup-core-standalone-sdk-target@all<br>
&gt; packagegroup-qt5-toolchain-target@all&#39; returned 1:error: Can&#39;t=
 install<br>
&gt; qtwebkit-dev-5.3.2-r0@i586: no package provides qtwebkit =3D 5.3.2-r0E=
RROR:<br>
</span>&gt; Function failed: do_populate_sdkERROR: Logfile of failure store=
d in:<br>
&gt; /home/simon/poky-dizzy/build/tmp/work/i586-poky-linux/meta-toolchain-q=
t5/1.0-r0/temp/log.do_populate_sdk.20827ERROR:<br>
&gt; Task 7<br>
&gt; (/home/simon/poky-dizzy/sources/meta-qt5/recipes-qt/meta/<a href=3D"ht=
tp://meta-toolchain-qt5.bb" target=3D"_blank">meta-toolchain-qt5.bb</a><br>
&gt; &lt;<a href=3D"http://meta-toolchain-qt5.bb" target=3D"_blank">http://=
meta-toolchain-qt5.bb</a>&gt;, do_populate_sdk) failed with exit code &#39;=
1&#39;*<br>
<div class=3D""><div class=3D"h5">&gt; +++<br>
&gt;<br>
&gt; thank you and br<br>
&gt; simon:)<br>
<br>
</div></div><span class=3D""><font color=3D"#888888">--<br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br></div></div>

--f46d0443063adc80e2050ddfd202--
