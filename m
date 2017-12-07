Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F360EE00D75; Thu,  7 Dec 2017 14:11:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (limon.anibal[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BDA7E00D73
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 14:11:54 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id l141so433565wmg.1
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 14:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kU+1oDJo8I0zoPjZNS/JJ9BCvsUcR+nTmf4sCMVVD9s=;
	b=sC4ohAWLb7iMHroZfNP2qsALwXCgNTMmCUH9aowqLceawc2/NeRyxIOZID5I68m2HZ
	362p0nrECmFyC2rwYxQyn1C9VZR8i2dnUFTCTO8gb0CrVkNcrepYN4erSz9ywqcoFwzT
	ssGRtAEJ36OBz9Pr/VqC58KIiR9zVJTSHkBr+tnmUDc5HlLb9SjKisC3j5MNYJHMdjGG
	UQn0N9XXyAp0qOL0lClkFTgYFvN03wYerv1hQFe7pvV8ZlxEjRArgLTZlreMA4UhCgew
	tHEKndkYn4BSd9rgoCK1U61QAUECYFk3D3CPCTmM4b0k5XwzrFa3FeJokltSgdC/37+r
	y54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kU+1oDJo8I0zoPjZNS/JJ9BCvsUcR+nTmf4sCMVVD9s=;
	b=jA2maK+P2vY81yld5TrjFf0ZN1N6jcThrdK+Ng1q1NXt6oEcOvMRfMMKVqeIQhZEDI
	90gyoGUGAENjHzl+UGLOt17jS4eaACvG02ZP7vvkx+us62WXlcIkLyVU2Qril9cdBFZq
	tSi9Pw7bNKmEVZWBEzH3XpWKODv6kOExoWxIpYL3maD7B8IO8BLkWEdX6qPjB6l3cImV
	IAkB9XKtcaXhC5+rV5zt/YZK3dzvKmWFxJIUP8BrRlu+D4PAub3L/Hrb0ry8YanlbeN5
	Xd13+CIX96kSlYvEdqrGUfoM3w5YOOXZCs29MjGYPywxJMjyBlbVZtN5rT1ZZPbk1zxj
	upVQ==
X-Gm-Message-State: AJaThX7r6BvScDk7bt1/gdLRaqUAMHA7Gr7wYhiwG27vPOdBe3VxNcP1
	V96Zsr/IQZDoHAmL/GptPy04QwIzwIeHaq6WNTk=
X-Google-Smtp-Source: AGs4zMYmaZyy9J0TyZPeJ7sH5MzsFbz80+WfNMByCorxaySg+OuswqloeSUW3Fab0ncUuvJvJQ8Hh+LTfUFPXfPDkd8=
X-Received: by 10.80.173.204 with SMTP id b12mr46955913edd.92.1512684714221;
	Thu, 07 Dec 2017 14:11:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.241.18 with HTTP; Thu, 7 Dec 2017 14:11:53 -0800 (PST)
In-Reply-To: <601e75fe-ab93-ebf8-a7de-d4e3af167c16@intel.com>
References: <20171207185111.14402-1-limon.anibal@gmail.com>
	<20171207185111.14402-3-limon.anibal@gmail.com>
	<601e75fe-ab93-ebf8-a7de-d4e3af167c16@intel.com>
From: =?UTF-8?Q?Anibal_Lim=C3=B3n?= <limon.anibal@gmail.com>
Date: Thu, 7 Dec 2017 16:11:53 -0600
Message-ID: <CAPS-YPCHFLbJtkaO630GdXgVq5v_BD_Oa8H6O6EbwA0rVXPVbg@mail.gmail.com>
To: Joshua Lock <joshua.g.lock@intel.com>
Cc: yocto@yoctoproject.org,
	=?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linaro.org>
Subject: Re: [ptest-runner 3/3] README.md: Update to my current email
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
X-List-Received-Date: Thu, 07 Dec 2017 22:11:56 -0000
Content-Type: multipart/alternative; boundary="94eb2c0c39b20c63e1055fc75b4e"

--94eb2c0c39b20c63e1055fc75b4e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 7, 2017 at 4:00 PM, Joshua Lock <joshua.g.lock@intel.com> wrote=
:

>
>
> On 07/12/17 18:51, An=C3=ADbal Lim=C3=B3n wrote:
>
>> From: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
>>
>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
>> ---
>>   README.md | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/README.md b/README.md
>> index fedab04..22b36a4 100644
>> --- a/README.md
>> +++ b/README.md
>> @@ -50,7 +50,7 @@ $ mtrace ./ptest-runner $(MALLOC_TRACE)
>>     For contribute please send a patch with subject prefix
>> "[ptest-runner]" to
>>   yocto@yoctoproject.org and cc the current maintainer that is An=C3=ADb=
al
>> Lim=C3=B3n
>> -<anibal.limon@linux.intel.com>.
>> +<anibal.limon@linaro.org>.
>>
>
> I take this to mean that you'd still like to maintain ptest-runner?
>
> We have patches on the list which could use review from someone more
> familiar with ptest-runner than me=E2=80=A6
>

Yes, i can look into that patches.

Can you point me the patches?,

Cheers,
Anibal


>
> Joshua
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>

--94eb2c0c39b20c63e1055fc75b4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Dec 7, 2017 at 4:00 PM, Joshua Lock <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:joshua.g.lock@intel.com" target=3D"_blank">joshua.g.lock@intel=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
""><br>
<br>
On 07/12/17 18:51, An=C3=ADbal Lim=C3=B3n wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
From: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.limon@linaro.org"=
 target=3D"_blank">anibal.limon@linaro.org</a>&gt;<br>
<br>
Signed-off-by: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.limon@li=
naro.org" target=3D"_blank">anibal.limon@linaro.org</a>&gt;<br>
---<br>
=C2=A0 README.md | 2 +-<br>
=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/README.md b/README.md<br>
index fedab04..22b36a4 100644<br>
--- a/README.md<br>
+++ b/README.md<br>
@@ -50,7 +50,7 @@ $ mtrace ./ptest-runner $(MALLOC_TRACE)<br>
=C2=A0 =C2=A0 For contribute please send a patch with subject prefix &quot;=
[ptest-runner]&quot; to<br>
=C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yo=
ctoproject.org</a> and cc the current maintainer that is An=C3=ADbal Lim=C3=
=B3n<br>
-&lt;<a href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">anib=
al.limon@linux.intel.com</a><wbr>&gt;.<br>
+&lt;<a href=3D"mailto:anibal.limon@linaro.org" target=3D"_blank">anibal.li=
mon@linaro.org</a>&gt;.<br>
</blockquote>
<br></span>
I take this to mean that you&#39;d still like to maintain ptest-runner?<br>
<br>
We have patches on the list which could use review from someone more famili=
ar with ptest-runner than me=E2=80=A6<br></blockquote><div><br></div><div>Y=
es, i can look into that patches.</div><div><br></div><div>Can you point me=
 the patches?,</div><div><br></div><div>Cheers,</div><div>Anibal</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
<br>
Joshua<br>
------------------------------<wbr>------------------------------<wbr>-----=
----<br>
Intel Corporation (UK) Limited<br>
Registered No. 1134945 (England)<br>
Registered Office: Pipers Way, Swindon SN3 1RJ<br>
VAT No: 860 2173 47<br>
<br>
This e-mail and any attachments may contain confidential material for<br>
the sole use of the intended recipient(s). Any review or distribution<br>
by others is strictly prohibited. If you are not the intended<br>
recipient, please contact the sender and delete all copies.<br>
</blockquote></div><br></div></div>

--94eb2c0c39b20c63e1055fc75b4e--
