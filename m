Return-Path: <peachj@lexmark.com>
Received: from exprod8og110.obsmtp.com (exprod8og110.obsmtp.com [64.18.3.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F8CDE00747
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 06:25:13 -0700 (PDT)
Received: from mail-oa0-f46.google.com ([209.85.219.46]) (using TLSv1) by
	exprod8ob110.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUdq9ufp/oe+gGECElcXIEQu7DoWxFh3+@postini.com;
	Mon, 08 Jul 2013 06:25:14 PDT
Received: by mail-oa0-f46.google.com with SMTP id h1so6302565oag.33
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 06:25:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=9QRRYcSC5oJqQF/7FGOhI6C+H+iJoqHBarC+Ne9E4lE=;
	b=QcnrEERjLhxSSbtl1nHufNk29bygy/BkKTmWBry1d2jX7y0xSk7YUqJwznfBPPO8ur
	3bjfbyW534UUpP+9uT3zMjy/ezTFKBWB/YceANsN0s4AbY7kEVE/lYUKSSMv+fZ/rNBt
	VLJZiVI3X3tUxuRFpmQMM4+rlCkAnJozm+t9wOkOkjLGTlwaM0YUASJFem3jztNIRzSs
	MQ3JxpY9zx0ri+wXNc3VmsbkrTeuRPtMhCvxMRQopWU/qkCyjS8Rt0VULleOFbRfQJyE
	CcAv3IFEoXf6qOMxlWqHQbh5ocjNLZ2MHe9n3Tw3BK2bYmAFLsn7TahJEvHyC62Vtsok
	CuYQ==
X-Received: by 10.182.79.106 with SMTP id i10mr19916130obx.59.1373289912778;
	Mon, 08 Jul 2013 06:25:12 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.182.79.106 with SMTP id i10mr19916119obx.59.1373289912546;
	Mon, 08 Jul 2013 06:25:12 -0700 (PDT)
Received: by 10.76.163.70 with HTTP; Mon, 8 Jul 2013 06:25:12 -0700 (PDT)
In-Reply-To: <CA+QkY1AuHy-wzgTWfRq7B0e7GFR4fAXdf_okVZ7wypjBp5ewzw@mail.gmail.com>
References: <CA+QkY1AuHy-wzgTWfRq7B0e7GFR4fAXdf_okVZ7wypjBp5ewzw@mail.gmail.com>
Date: Mon, 8 Jul 2013 09:25:12 -0400
Message-ID: <CA+QkY1CUeBR2zkzNofqbosfB=-3zMYChDQOYJPKpB0EaUfx+zw@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQmm5m88Z9BwCU3X1EqgGwtlqCbPY1QaGyHnXLcd45QFdim9QPDR3WrkVaWDqaSCNpRy/WeDiTtVdH9XjvFpRnlQuke7F6PwS+r9oreiuR6XaVMsU96XNqRXmyGlvvHNibXobh+HpGgPb21+cdr8mfutf/fgmxvl3kgT5GdNwoFMLu8ufx0=
Subject: Yocto 1.4: Bad behavior between rm_work and packaging causing failures?
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
X-List-Received-Date: Mon, 08 Jul 2013 13:25:14 -0000
Content-Type: multipart/alternative; boundary=047d7b2e3e106944cd04e0fff936

--047d7b2e3e106944cd04e0fff936
Content-Type: text/plain; charset=ISO-8859-1

Re-sending as we've hit another rash of these issues and it ate up a couple
days of investigation that still led to no resolution or figuring out how
to reproduce it.  I'm going to log a bug in a day or so, even though my
information is incomplete, if no one knows what's going on here and can
explain how to avoid it (other than turning rm_work off, which I suspect
would fix the problem but cost us a bunch of disk space as a trade-off).

---------- Forwarded message ----------
From: Jerrod Peach <peachj@lexmark.com>
Date: Thu, Jun 13, 2013 at 12:28 PM
Subject: Yocto 1.4: Bad behavior between rm_work and packaging causing
failures?
To: yocto <yocto@yoctoproject.org>


All,

Since upgrading to Yocto 1.4, several people at our organization have
noticed a couple of weird build failures related to rm_work and packaging.
 Here are the two failure scenarios:

1) A user builds package, but bitbake only re-runs the do_pkg_write_rpm
task without having run any other build tasks.  This appears to be due to a
supposedly-valid stamp file existing for the other tasks in the task graph.
 This would normally result in an empty rpm being created, but the rpm
creation code (smartly) refuses to create empty rpms.  This, then, causes a
build failure during image creation (if the package is needed for the
image, of course) because the rpm isn't present.  We think this situation
leads to the second failure we see.

2) Whether a build succeeds or fails, if it's run on our build
infrastructure, we upload its sstate to an sstate mirror.  sstate is still
uploaded for the do_package_write_rpm task in case 1 for builds performed
on our infrastructure.  That means the sstate, then, contains no rpm for
the package in question.  This causes later builds to fail with the same
error as in case 1 (the rpm isn't present when the image needs it), but for
a different reason (getting a hit on poisoned sstate).

We do not know how to reproduce this problem.  We think it's related to
commit f090c15 (in the poky repo), but we haven't had much time to
investigate further.  I suspect there is only one bug to fix here (i.e.,
whatever is causing stamp files to incorrectly exist), but since there are
some number of unknowns here, I thought I'd be better off describing the
whole situation, just in case.

Has anyone else seen this?  Does anyone have ideas as to what's causing it?

Kind regards,

Jerrod

--047d7b2e3e106944cd04e0fff936
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Re-sending as we&#39;ve hit another rash of these issues a=
nd it ate up a couple days of investigation that still led to no resolution=
 or figuring out how to reproduce it. =A0I&#39;m going to log a bug in a da=
y or so, even though my information is incomplete, if no one knows what&#39=
;s going on here and can explain how to avoid it (other than turning rm_wor=
k off, which I suspect would fix the problem but cost us a bunch of disk sp=
ace as a trade-off).<br>
<br><div class=3D"gmail_quote">---------- Forwarded message ----------<br>F=
rom: <b class=3D"gmail_sendername">Jerrod Peach</b> <span dir=3D"ltr">&lt;<=
a href=3D"mailto:peachj@lexmark.com">peachj@lexmark.com</a>&gt;</span><br>D=
ate: Thu, Jun 13, 2013 at 12:28 PM<br>
Subject: Yocto 1.4: Bad behavior between rm_work and packaging causing fail=
ures?<br>To: yocto &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoct=
oproject.org</a>&gt;<br><br><br><div dir=3D"ltr">All,<div><br></div><div>Si=
nce upgrading to Yocto 1.4, several people at our organization have noticed=
 a couple of weird build failures related to rm_work and packaging. =A0Here=
 are the two failure scenarios:</div>

<div><br></div><div>1) A user builds package, but bitbake only re-runs the =
do_pkg_write_rpm task without having run any other build tasks. =A0This app=
ears to be due to a supposedly-valid stamp file existing for the other task=
s in the task graph. =A0This would normally result in an empty rpm being cr=
eated, but the rpm creation code (smartly) refuses to create empty rpms. =
=A0This, then, causes a build failure during image creation (if the package=
 is needed for the image, of course) because the rpm isn&#39;t present. =A0=
We think this situation leads to the second failure we see.</div>

<div><br></div><div>2) Whether a build succeeds or fails, if it&#39;s run o=
n our build infrastructure, we upload its sstate to an sstate mirror. =A0ss=
tate is still uploaded for the do_package_write_rpm task in case 1 for buil=
ds performed on our infrastructure. =A0That means the sstate, then, contain=
s no rpm for the package in question. =A0This causes later builds to fail w=
ith the same error as in case 1 (the rpm isn&#39;t present when the image n=
eeds it), but for a different reason (getting a hit on poisoned sstate).</d=
iv>

<div><br></div><div>We do not know how to reproduce this problem. =A0We thi=
nk it&#39;s related to commit=A0f090c15 (in the poky repo), but we haven&#3=
9;t had much time to investigate further. =A0I suspect there is only one bu=
g to fix here (i.e., whatever is causing stamp files to incorrectly exist),=
 but since there are some number of unknowns here, I thought I&#39;d be bet=
ter off describing the whole situation, just in case.</div>

<div><br></div><div>Has anyone else seen this? =A0Does anyone have ideas as=
 to what&#39;s causing it?</div><div><br></div><div>Kind regards,</div><div=
><br></div><div>Jerrod</div></div>
</div><br></div>

--047d7b2e3e106944cd04e0fff936--
