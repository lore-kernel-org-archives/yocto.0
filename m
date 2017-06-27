Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3E3AE0084A; Tue, 27 Jun 2017 01:45:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31EA6E00524
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 01:45:28 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id h134so13922841iof.2
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 01:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Rf8CPNKr/ElgtaDZCPjrgjgIVmCglpTc4tmid3rcDj8=;
	b=s8jxn2nonrrBpxfN200yHWxN9n/vPjwllcAiqN+/NDiEmHc1kRoyRMH81ICfjpexoD
	n3dMiLrtjAS0tlDDUJM/045rmtfr+k/heGtCV7ZNpDxDskXspQV0ebLJxo7VGRZPlixl
	rQS0fFh/axlTe/Fm7TeLeYlBI2etiuhZWOPgiXjq1+EyQ4YJ+nvYP8XZVPDY+2n+BaUE
	xMByqvR0adtAEymxTciuiB+KbDUvdfHHFkQx34jdTPsEklswejfsR15TokLTebnCcIwQ
	po8O+jiYRqGzHUu9VP2fV1UC2a9XfPTUcM/uH6/f/KCzQzs/vWc3pPRuEKduiRQNZss2
	YR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Rf8CPNKr/ElgtaDZCPjrgjgIVmCglpTc4tmid3rcDj8=;
	b=tZLQqVPqd/nooEGGv3qr1YoCirvsBMN13hNw5wBMF5V0qPdekkxzBPtTDRrF4om+pJ
	thMLXrZf3FbXnuT/bSpBzs3YjcR+//wngitKLvqNN2Z5WlBs1K5RkMDnCSjcjsi3LyFH
	i+NCOTTTAdhxHIri0vNXNe8FF1ecgiM1yfc9i+zRR23tbjZC5s4zCY+qKbb0XSbNE1AJ
	ckP3p7ocdBw6/8W5a6EH+jlLZho2EFW4tjqiN6V6dJnLBsK03c4sQc53OUsSqlq8cdi3
	+D9GxKzcL8DDGnwELRkUasvddG1CvmCOYpuNnWG7NhMBlQouLf437nS7+PoVFiz2Ky0u
	7doA==
X-Gm-Message-State: AKS2vOz1WVQAp5sHxxj3fxaKVSEq3rTCJ4gHy7z4Jer8YiAj+E1alkSU
	X1WI4Y1MnrjXRWZngrEJIDcH94KxGZV+
X-Received: by 10.107.26.14 with SMTP id a14mr5243846ioa.8.1498553128355; Tue,
	27 Jun 2017 01:45:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.44.87 with HTTP; Tue, 27 Jun 2017 01:44:57 -0700 (PDT)
In-Reply-To: <613B01769C90A14993AA13B38ECD4B858BB6D872@EX02.corpuls.local>
References: <613B01769C90A14993AA13B38ECD4B858BB6D872@EX02.corpuls.local>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 27 Jun 2017 11:44:57 +0300
Message-ID: <CAHiDW_G-NBegQBV9106u+SRFvUxEGz5+EA7RddA0MLqGbaF0hA@mail.gmail.com>
To: Ehrlich Andrei <Andrei.Ehrlich@corpuls.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: : cmake and create_symlink using cmake 3.5 and yocto 2.2.2
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
X-List-Received-Date: Tue, 27 Jun 2017 08:45:30 -0000
Content-Type: multipart/alternative; boundary="001a113fe604e4aaa40552ed1619"

--001a113fe604e4aaa40552ed1619
Content-Type: text/plain; charset="UTF-8"

On 26 June 2017 at 21:46, Ehrlich Andrei <Andrei.Ehrlich@corpuls.com> wrote:
> Please excuse the newbie question I want to ask, but I started with yocto
and cmake 3 month ago and now I have a couple of recipes based on cmake.
One of that cmake files installs links using following code:
>
> install(
>             CODE "execute_process( \
>                 COMMAND ${CMAKE_COMMAND} -E create_symlink \
>                 __tool \
>                 ${CMAKE_INSTALL_PREFIX}/bin/tool_${DST_NAME} \
>             )"
>
> When the code is executed in yocto  the do_install task fails with
following error:
> failed to create symbolic link '/usr/bin/tool_intf': Permission denied

The code should account for DESTDIR I think: maybe something like
"$ENV{DESTDIR}/${CMAKE_INSTALL_PREFIX}/bin/tool_${DST_NAME}" as the target

HTH,
  Jussi

--001a113fe604e4aaa40552ed1619
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 26 June 2017 at 21:46, Ehrlich Andrei &lt;<a href=3D"ma=
ilto:Andrei.Ehrlich@corpuls.com">Andrei.Ehrlich@corpuls.com</a>&gt; wrote:<=
br>&gt; Please excuse the newbie question I want to ask, but I started with=
 yocto and cmake 3 month ago and now I have a couple of recipes based on cm=
ake. One of that cmake files installs links using following code:<br>&gt;<b=
r>&gt; install(<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 CODE &quo=
t;execute_process( \<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 COMMAND ${CMAKE_COMMAND} -E create_symlink \<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __tool \<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${CMAKE_INSTALL_PREFIX}/bin/t=
ool_${DST_NAME} \<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 )&quot;=
<br>&gt;<br>&gt; When the code is executed in yocto =C2=A0the do_install ta=
sk fails with following error:<br>&gt; failed to create symbolic link &#39;=
/usr/bin/tool_intf&#39;: Permission denied<br><br>The code should account f=
or DESTDIR I think: maybe something like &quot;$ENV{DESTDIR}/${CMAKE_INSTAL=
L_PREFIX}/bin/tool_${DST_NAME}&quot; as the target<br><br>HTH,<br>=C2=A0 Ju=
ssi<br></div>

--001a113fe604e4aaa40552ed1619--
