Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08338E00723
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 13:19:30 -0700 (PDT)
Received: by eaab16 with SMTP id b16so2710833eaa.35
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 13:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pp9PI5Vtrm3p1uB3kFC0aBLJTyG4PPOhRQTBCrc6dLY=;
	b=z5TxbgJu/aCQveNX3hUHDDlK1UcNK92KufHG7aDKefPszfHjkaQaD6WPABjoh7A2U2
	DEw1Q4YUSaMVUZKwZ2OAku+LGcuIAZ5QTjd7GqfTMQ3JQMxWz5kXBIZ3sHli3MkjHTLl
	cMyh6RE2g1LkB8mdiQYEMSmjQ8bX5BCK5z4eggrd3n8irn27PLT59fygdWBXw84PJki8
	6d0Ymvieoy9xEAvhWIlvUZy69Trn6ub2BcOQ0AoF/pgIxWtxEM5Q15eBwX8kbgwxUqXa
	/fG0nPScXYb250DXxeU+E/ESGn3sAW5NL0MLLRd7MAEyDNSItLmIAyVzfBpKa2UvVS3E
	qS8g==
MIME-Version: 1.0
Received: by 10.14.185.137 with SMTP id u9mr4891977eem.220.1340137169365; Tue,
	19 Jun 2012 13:19:29 -0700 (PDT)
Received: by 10.14.219.71 with HTTP; Tue, 19 Jun 2012 13:19:29 -0700 (PDT)
In-Reply-To: <E16513A01CAAFF40B65178C63CE45EEC1914D426@IRSMSX102.ger.corp.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC1914D426@IRSMSX102.ger.corp.intel.com>
Date: Tue, 19 Jun 2012 13:19:29 -0700
Message-ID: <CAMKF1sp+V6zFUM8Ft=GR0ULvpKvWKnDTqUZ3MaqFHCVW_ZhBGg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: "Serban, Laurentiu" <laurentiu.serban@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: VERIFIED vs CLOSED in yocto bugzilla
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Jun 2012 20:19:31 -0000
Content-Type: multipart/alternative; boundary=bcaec517a742ee2b1c04c2d8ff0d

--bcaec517a742ee2b1c04c2d8ff0d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tuesday, June 19, 2012, Serban, Laurentiu <laurentiu.serban@intel.com>
wrote:
> Hello,
>
>
>
> I submit to your attention the following issue related to Yocto project=
=E2=80=99s
bugzilla:
>
>
>
> Which is the most appropriate end for a the lifecycle of a bugzilla
issue: VERIFIED or CLOSED?
>
> Currently the bug lifecycle final point is VERIFIED and the status CLOSED
is not used. Setting a bug to CLOSED after it was VERIFIED has no impact on
the lifecycle itself as the bug can be reopened anyway.
>
>
>
> My proposal is the following: keep VERIFIED as the final point of the bug
lifecycle and use the status CLOSED for the bug only after the 1.3 release,
if the regression testing for the bug is ran and passed.
>
> So after the 1.3 release the ideal situation is that all the bugs related
to it with previous status VERIFIED are CLOSED.
>
>
>
> Waiting for your opinion on this,
>

Closed is something for the original submitter IMO
He should be the one to mark the bug closed
> Thank you,
>
>
>
> Laurentiu Serban
>
> QA Engineer
>
> Open Source Technology Center
>
> System Software Division Romania
>
> Desk: +40 31 8604742
>
> iNET: 88451042
>
>

--bcaec517a742ee2b1c04c2d8ff0d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Tuesday, June 19, 2012, Serban, Laurentiu &lt;<a href=3D"mailto:=
laurentiu.serban@intel.com">laurentiu.serban@intel.com</a>&gt; wrote:<br>&g=
t; Hello,<br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; I submit to your attention=
 the following issue related to Yocto project=E2=80=99s bugzilla:<br>
&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; Which is the most appropriate end for a=
 the lifecycle of a bugzilla issue: VERIFIED or CLOSED?<br>&gt;<br>&gt; Cur=
rently the bug lifecycle final point is VERIFIED and the status CLOSED is n=
ot used. Setting a bug to CLOSED after it was VERIFIED has no impact on the=
 lifecycle itself as the bug can be reopened anyway.<br>
&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; My proposal is the following: keep VERI=
FIED as the final point of the bug lifecycle and use the status CLOSED for =
the bug only after the 1.3 release, if the regression testing for the bug i=
s ran and passed.<br>
&gt;<br>&gt; So after the 1.3 release the ideal situation is that all the b=
ugs related to it with previous status VERIFIED are CLOSED.<br>&gt;<br>&gt;=
 =C2=A0<br>&gt;<br>&gt; Waiting for your opinion on this,<br>&gt;<br><br>Cl=
osed is something for the original submitter IMO<br>
He should be the one to mark the bug closed <br>&gt; Thank you,<br>&gt;<br>=
&gt; =C2=A0<br>&gt;<br>&gt; Laurentiu Serban<br>&gt;<br>&gt; QA Engineer<br=
>&gt;<br>&gt; Open Source Technology Center<br>&gt;<br>&gt; System Software=
 Division Romania<br>
&gt;<br>&gt; Desk: +40 31 8604742<br>&gt;<br>&gt; iNET: 88451042<br>&gt;<br=
>&gt; =C2=A0

--bcaec517a742ee2b1c04c2d8ff0d--
