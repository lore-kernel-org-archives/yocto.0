Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56CE8E0071C; Tue, 20 Oct 2015 03:19:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BFCBE006F1
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 03:19:15 -0700 (PDT)
Received: by vkex70 with SMTP id x70so6960488vke.3
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 03:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=hwqE35Wt10gaBYEtTEwWoF209gKOjcYmL7v4zpsCsFc=;
	b=RYxu4HPpJ7p31LJcrfpJ0Z7YwRXYs0uRnxj+2tS808tcAjwlERUbaTgnf+aSr6Opjz
	dZ1DEXdCtGxBzpbfhumd5Xe/TPOK2dE6koSpgj/E0Yd7R4yEdUyge3fVptowph/oPnkQ
	nXIU303OVkaGB5ETgPekJWd8OO7qRiDuu5I/jrP3TyZmwYx1ATC/RI23uA7Hd/wbJMNh
	lafa1/Tbvo80GJIWJzy4Cm6+gureLpyainrzJFwqJ0aLAk1q7RkKtOs+l8p3cb9sfgT+
	/H3pFaOWo9NgIjZSgMYp+DQQjN9IpoNClQTT3ma/hUifM4vN11qpvMzBj2DTcy3WOZWo
	eomg==
MIME-Version: 1.0
X-Received: by 10.31.178.136 with SMTP id b130mr1304101vkf.109.1445336354866; 
	Tue, 20 Oct 2015 03:19:14 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Tue, 20 Oct 2015 03:19:14 -0700 (PDT)
In-Reply-To: <20151020043427.GB22526@mbabyjoh-mobl.fi.intel.com>
References: <CALLyC8QStDgKandfU3yPpkVfxtG5MVd0jTBt0Ceq1gYEOkkwBw@mail.gmail.com>
	<20151020043427.GB22526@mbabyjoh-mobl.fi.intel.com>
Date: Tue, 20 Oct 2015 15:49:14 +0530
Message-ID: <CALLyC8To=Z2YvMAszXbekr2++f4YJFdkXsSPKvdy1-MucQ2mjg@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>, maxin.john@intel.com
Subject: Re: How can i install shutil.py in rootfs
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
X-List-Received-Date: Tue, 20 Oct 2015 10:19:19 -0000
Content-Type: multipart/alternative; boundary=001a1143e074034ce705228698fb

--001a1143e074034ce705228698fb
Content-Type: text/plain; charset=UTF-8

i have put "python-shell" in IMAGE_INSTALL it worked fine.

Thanks
vivek

On Tue, Oct 20, 2015 at 10:04 AM, Maxin B. John <maxin.john@intel.com>
wrote:

> Hi Vivek,
>
> On Tue, Oct 20, 2015 at 02:38:36PM +0530, Vivek Per wrote:
> > hi,
> > How can i install shutil.py in roofs.  I need this file for audit2allow.
> > In rootfs remaining .py files are including  /usr/share/python-support/
> > but not shutil.py. i want to include this file in rootfs how can i
> install this?
>
> You need to install "python-shell" in your image for shutil.py
>
> ie:
> IMAGE_INSTALL_append = " python-shell" in local.conf and build again.
>
> Best Regards,
> Maxin
>

--001a1143e074034ce705228698fb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i have put &quot;python-shell&quot; in IMAGE_INSTALL it wo=
rked fine.<div><br></div><div>Thanks=C2=A0</div><div>vivek</div></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Oct 20, 2015 a=
t 10:04 AM, Maxin B. John <span dir=3D"ltr">&lt;<a href=3D"mailto:maxin.joh=
n@intel.com" target=3D"_blank">maxin.john@intel.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">Hi Vivek,<br>
<span class=3D""><br>
On Tue, Oct 20, 2015 at 02:38:36PM +0530, Vivek Per wrote:<br>
&gt; hi,<br>
&gt; How can i install shutil.py in roofs.=C2=A0 I need this file for audit=
2allow.<br>
&gt; In rootfs remaining .py files are including=C2=A0 /usr/share/python-su=
pport/<br>
&gt; but not shutil.py. i want to include this file in rootfs how can i ins=
tall this?<br>
<br>
</span>You need to install &quot;python-shell&quot; in your image for shuti=
l.py<br>
<br>
ie:<br>
IMAGE_INSTALL_append =3D &quot; python-shell&quot; in local.conf and build =
again.<br>
<br>
Best Regards,<br>
Maxin<br>
</blockquote></div><br></div>

--001a1143e074034ce705228698fb--
