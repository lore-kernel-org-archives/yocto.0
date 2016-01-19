Return-Path: <dsonone@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88C58E008BB; Mon, 18 Jan 2016 23:05:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dsonone[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C0C4E0045F
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 23:05:07 -0800 (PST)
Received: by mail-pa0-f46.google.com with SMTP id yy13so353884768pab.3
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 23:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:references:from:content-type:in-reply-to:message-id:date:to
	:content-transfer-encoding:mime-version;
	bh=MY5j26AlhFKvJukKdl1ZfanrMP5mn54NoV2Z9y+rxjU=;
	b=HYLJF+cbvDn4RIs0d3IiJdfesIjhzilqq/bycQ3mU+LsJMoGwMyfPBb6iZBmVGVBHg
	vcQkzeYyvW1O976VaCMcI8Mru7wnkMDw+UXULjXVJEo9xwZRSVM2CvTvZaC4QnXdYe3V
	tn7+Qg1qqrH2z45gTdVooz9dSCr3pUuxYqM+i59FclLbMaMVKI8ko94xxEKdjyYp49aH
	aY8HV4uQwCapJICcZkbMeip9D0ts3u9LsPhMi7Lw4fpOIdQA93ABAIwQwzRx9OY04PI0
	BLmKiXfL7eGW4QOBs9n849MESj8dAyEGiIFM2IOIBh8om3SutEvzqJ1+nbTiJW1kqV90
	9EUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:references:from:content-type:in-reply-to
	:message-id:date:to:content-transfer-encoding:mime-version;
	bh=MY5j26AlhFKvJukKdl1ZfanrMP5mn54NoV2Z9y+rxjU=;
	b=Sx4vEW/RlY7jxUXfa/RMzd01SsyOJiyYvmZqk4ZY/d/1g/IcdQWngvbfJnNuDTSLRu
	1KD+O+2DDAXwrqUir1huwHGqi0U4V1HUDAGbfDjA7xJFpOwVeTb2JRhe7Uqq5nflwbbt
	A48AxDWLOzuulTFwn3MtzYFODGkBv00oo0XBSHj3VlGlUlpehNx3YitD9nX5FAs1+Asg
	oUDtgIO8fAVeVgMvZka7oZrJBSPYDi/+evbrl2XTBtKjSHuX3jJIRcdiIOr3/C81swpe
	DZ0+mXy/GWVl1xtVkuGd0z9ujVhNAh64EKFq8bQXe47XTq/PtgYcOs4pCbeBFIAb4kIj
	SuqQ==
X-Gm-Message-State: ALoCoQl/KD0hMW0BzoHOKdbdv5zlzDN1B/U1VMzapGHdHLLvTZDSzvDx3P620/gTfHlyDg5cdFU20sj1LxBU2x12apFHfdsxXw==
X-Received: by 10.66.190.7 with SMTP id gm7mr42208935pac.79.1453187107570;
	Mon, 18 Jan 2016 23:05:07 -0800 (PST)
Received: from [10.23.156.134] ([1.39.15.156])
	by smtp.gmail.com with ESMTPSA id
	w82sm38556859pfi.95.2016.01.18.23.04.58 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 18 Jan 2016 23:05:07 -0800 (PST)
References: <mailman.13.1453147202.19669.yocto@yoctoproject.org>
From: Damodar <dsonone@gmail.com>
X-Mailer: iPhone Mail (11D257)
In-Reply-To: <mailman.13.1453147202.19669.yocto@yoctoproject.org>
Message-Id: <94D3E726-2926-4579-96A4-3F0BDBDEE47C@gmail.com>
Date: Tue, 19 Jan 2016 12:34:51 +0530
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Mime-Version: 1.0 (1.0)
Subject: Re: yocto Digest, Vol 64, Issue 52
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
X-List-Received-Date: Tue, 19 Jan 2016 07:05:13 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I used the default one.
build_dir/tmp

Thanks
> On 19-Jan-2016, at 1:30 am, yocto-request@yoctoproject.org wrote:
>=20
> Send yocto mailing list submissions to
>    yocto@yoctoproject.org
>=20
> To subscribe or unsubscribe via the World Wide Web, visit
>    https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>    yocto-request@yoctoproject.org
>=20
> You can reach the person managing the list at
>    yocto-owner@yoctoproject.org
>=20
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>=20
>=20
> Today's Topics:
>=20
>   1. Re: ipv6 testing (akuster)
>=20
>=20
> ----------------------------------------------------------------------
>=20
> Message: 1
> Date: Mon, 18 Jan 2016 09:11:11 -0800
> From: akuster <akuster@mvista.com>
> To: Larry Goss <Larry.Goss@enea.com>,    "yocto@yoctoproject.org"
>    <yocto@yoctoproject.org>
> Subject: Re: [yocto] ipv6 testing
> Message-ID: <569D1CAF.5000809@mvista.com>
> Content-Type: text/plain; charset=3Dwindows-1252
>=20
> Larry,
>=20
>> On 01/15/2016 10:52 AM, Larry Goss wrote:
>> Hi,
>>=20
>> Does Yocto do any IPv6 conformance testing?
>=20
> AFAIK, the project does not preform conformance testing.
>=20
> regards,
> Armin
>>=20
>> Thanks,
>>=20
>> Larry Goss
>> Sr. Field Applications Engineer
>> Enea North America
>> Email: larry.goss@enea.com
>> Phone: (603) 475-1087
>>=20
>> http://www.enea.com/
>>=20
>> _______________________________________________________________________=
_________________________________________________________
>> This message, including attachments, is CONFIDENTIAL. It may also be pr=
ivileged or otherwise protected by law. If you received this email by mista=
ke please let us know by reply and then delete it from your system; you sho=
uld not copy it or disclose its contents to anyone. All messages sent to an=
d from Enea may be monitored to ensure compliance with internal policies an=
d to protect our business. Emails are not secure and cannot be guaranteed t=
o be error free as they can be intercepted, amended, lost or destroyed, or =
contain viruses. The sender therefore does not accept liability for any err=
ors or omissions in the contents of this message, which arise as a result o=
f e-mail transmission. Anyone who communicates with us by email accepts the=
se risks.
>=20
>=20
> ------------------------------
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> End of yocto Digest, Vol 64, Issue 52
> *************************************

