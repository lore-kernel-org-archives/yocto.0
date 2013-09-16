Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02868E015A4
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 14:31:03 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id u16so8399283iet.19
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 14:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FCQ9yVvSBWT1BUOOyj4sBJKAIUuIu5lwciMjVGRVLbk=;
	b=Z0rfUf/OA8ei27s2mKwwU0Wo9g+OUQfUumAdPnpe2i1cG4ihUizlx6ELwM5PgTAwUL
	tB6xhK6jMTMmyCiKXj7RJ0/rXPb3ZMugG60yTDnt+C0rTXlzuPc9QV0hwcE3kK59mSnK
	CvgIJQZ53aqcFfSfWODKohlfNLlZpNZawnriQmFBqGM38s35s5ShrpiARxiDUuy8QpTm
	CDnMTcaA9y4GbgUo7edKbc0ZoZskDQSuBuJD/t64v0QvJsSFd/I9bIT+gUpOEAyn0/mJ
	NqvZdmxn7/X8tEqTpE1+5lF+vISOa720YuxR+Amqgd/sKUoC0eyD6iH9KnEuAFAYQO/X
	0RaA==
MIME-Version: 1.0
X-Received: by 10.50.22.67 with SMTP id b3mr7032346igf.39.1379367062999; Mon,
	16 Sep 2013 14:31:02 -0700 (PDT)
Received: by 10.50.216.195 with HTTP; Mon, 16 Sep 2013 14:31:02 -0700 (PDT)
In-Reply-To: <52375CD6.3010604@philipp-wagner.com>
References: <loom.20130916T112434-834@post.gmane.org>
	<CAAA4K6KgpiL+Y1U2Ui3YGm8nV_Y+2bvCjAocw3j=CHQTRhTyvA@mail.gmail.com>
	<loom.20130916T125631-411@post.gmane.org>
	<F333D337-0522-4164-9704-6B56C20F7AC9@gmail.com>
	<52375CD6.3010604@philipp-wagner.com>
Date: Mon, 16 Sep 2013 14:31:02 -0700
Message-ID: <CAMKF1sqpiPeXoBmvotgVKjJPmO98O184U=8dDmjtwJ2jpoSrxg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add nfs package to image minimal for atom-pc
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
X-List-Received-Date: Mon, 16 Sep 2013 21:31:04 -0000
Content-Type: multipart/alternative; boundary=047d7b10ca29ce1cd704e686ebb6

--047d7b10ca29ce1cd704e686ebb6
Content-Type: text/plain; charset=UTF-8

On Monday, September 16, 2013, Philipp Wagner <lists@philipp-wagner.com>
wrote:
> Am 16.09.2013 19:06, Khem Raj wrote:
>>
>> On Sep 16, 2013, at 4:04 AM, Jack <jackrubby2010@gmail.com> wrote:
>>
>>> I have already tested it. But I got error again. Error is :
>>>
>>> Computing transaction...error: Can't install nfs-utils-1.2.7-r0@core2:
no
>>> package provides /bin/bash
>>>
>>> What can I do?
>>
>> well, you can add bash to your image using IMAGE_INSTALL or something
however that might
>> hide potential problem where may be there is one script in nfs-utils
wanting bash which
>> can be split into a package of its own. If you can file a bug in yocto
bugzilla to track it as well
>
> nfs-utils contains a couple bash scripts, e.g. osd_login or start-statd.
> Both use in its current state at least some bash specifics, so they need
> to either be modified to work with any shell, split out or bash needs
> to be added as dependency. I already reported this on the mailing list
> some months ago, but since then I simply added bash to the image, as I
> was told that adding bash as dependency is a no-go.

its really not a no go but its not a depend but rdepend and even better id
bashism can be removed

>
> Philipp
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b10ca29ce1cd704e686ebb6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Monday, September 16, 2013, Philipp Wagner &lt;<a href=3D"mailto=
:lists@philipp-wagner.com">lists@philipp-wagner.com</a>&gt; wrote:<br>&gt; =
Am 16.09.2013 19:06, Khem Raj wrote:<br>&gt;&gt;<br>&gt;&gt; On Sep 16, 201=
3, at 4:04 AM, Jack &lt;<a href=3D"mailto:jackrubby2010@gmail.com">jackrubb=
y2010@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>&gt;&gt;&gt; I have already tested it. But I got error again. E=
rror is :<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; Computing transaction...error: Ca=
n&#39;t install nfs-utils-1.2.7-r0@core2: no<br>&gt;&gt;&gt; package provid=
es /bin/bash<br>
&gt;&gt;&gt;<br>&gt;&gt;&gt; What can I do?<br>&gt;&gt;<br>&gt;&gt; well, y=
ou can add bash to your image using IMAGE_INSTALL or something however that=
 might<br>&gt;&gt; hide potential problem where may be there is one script =
in nfs-utils wanting bash which<br>
&gt;&gt; can be split into a package of its own. If you can file a bug in y=
octo bugzilla to track it as well<br>&gt;<br>&gt; nfs-utils contains a coup=
le bash scripts, e.g. osd_login or start-statd.<br>&gt; Both use in its cur=
rent state at least some bash specifics, so they need<br>
&gt; to either be modified to work with any shell, split out or bash needs<=
br>&gt; to be added as dependency. I already reported this on the mailing l=
ist<br>&gt; some months ago, but since then I simply added bash to the imag=
e, as I<br>
&gt; was told that adding bash as dependency is a no-go.<br><br>its really =
not a no go but its not a depend but rdepend and even better id bashism can=
 be removed<br><br>&gt;<br>&gt; Philipp<br>&gt; ___________________________=
____________________<br>
&gt; yocto mailing list<br>&gt; <a href=3D"mailto:yocto@yoctoproject.org">y=
octo@yoctoproject.org</a><br>&gt; <a href=3D"https://lists.yoctoproject.org=
/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>&gt;

--047d7b10ca29ce1cd704e686ebb6--
