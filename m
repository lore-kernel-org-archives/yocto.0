Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E52FE00BEA; Tue, 28 Nov 2017 07:45:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f52.google.com (mail-pl0-f52.google.com
	[209.85.160.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B0EAE00A9C
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 07:45:25 -0800 (PST)
Received: by mail-pl0-f52.google.com with SMTP id d21so145358pll.1
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 07:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=gdvUifTNqzi7cTAVpI0hlWhauwB3sKLcj+/LSdqMtY8=;
	b=PbJWMXggXdO5Bpxda5hdgazjFgxQTKpxYvKSKoCRI+MDsWBfyGhB1p2jAwo5KmZ8YK
	9LbpNas0YIcljx9HLu2/NKBWUhwWgFigV7GyafXp1xz9H/pYevGYoAzrSFnFsDH/bHZ7
	OuDBf/x0HW+O0KfcnrBkVRizHY9dXSD6VPTBb/S9QWbZc1CY32yKqRiuYSKkUzVWFVy9
	gNWQXFZ5R63g1pWciwFpfKatKdfkbR6tdtiLxzjN7JwKF76Ev4Buv+EpzCPOeZtMsebg
	QNfDKW1P/jTVQrVfm8Oy92V3/5kw3x2XWnDE0TNeXFxaZDjZ5Mp9oEWS39cAMlPfp5rP
	C4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=gdvUifTNqzi7cTAVpI0hlWhauwB3sKLcj+/LSdqMtY8=;
	b=iPw7GFrf6Lqo/5HXRFMneFkaRsXarVwvlIIpwIhBT1vGeyBurHmcK5uCfN6LMt99a1
	Bw5uEX73BvJE9qVLZSgART/p7cj+mcmwm9uRgfqeTavtQFpoJgXHMy7rd98UcsIRl2IO
	lKoFU4sne2ykbv323o+MP3fkaprrRamTeXS/GbHuwpmIE6f9G2a1pGgtLRRZik8DMedx
	llV85NMgFAnd1MlxUVxz+WcaHAahyMoDdY8UzpsH15Dd4i38Yj0cWNF64W6H5spoQEyO
	JuYwlm9zceBuYTFYMFJqq0CHoRCDgrOAJUHTfmfjmXdngY4hYRPyyVxeFfaZ7BlC3RJK
	epyA==
X-Gm-Message-State: AJaThX4kdtU7D2Za8hzqhVPOZO2qHwhcfh72g/9NTC35iV/RffR1Sc8Z
	+HEsmklo3pq9eKAqIakTe2Q=
X-Google-Smtp-Source: AGs4zMbwnIdvW16kRt/wPWySUylGcDMJtnLJhfZ0FdiUo1m5A1hHBCeUDHAEVJCHKg5UakXwMu9KPg==
X-Received: by 10.84.133.164 with SMTP id f33mr16235796plf.241.1511883924841; 
	Tue, 28 Nov 2017 07:45:24 -0800 (PST)
Received: from ?IPv6:2601:202:4001:9ea0:2c7f:421f:20ad:ca14?
	([2601:202:4001:9ea0:2c7f:421f:20ad:ca14])
	by smtp.gmail.com with ESMTPSA id
	t66sm17098696pfa.153.2017.11.28.07.45.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 28 Nov 2017 07:45:24 -0800 (PST)
To: Mark Hatle <mark.hatle@windriver.com>,
	"Burton, Ross" <ross.burton@intel.com>,
	Hongxu Jia <hongxu.jia@windriver.com>
References: <bfbfad0b-af40-5448-4aed-fc70eeb95c6c@windriver.com>
	<7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com>
	<CAJTo0LZfkd2SbTrXL6ggt9_NQbDUfEDVLTaaqc8sPwaUihfRUw@mail.gmail.com>
	<6724ad48-b676-0de9-df72-453272f978f3@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <14ea1950-7cd7-c104-14a0-0f34d2bbbe1b@gmail.com>
Date: Tue, 28 Nov 2017 07:45:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <6724ad48-b676-0de9-df72-453272f978f3@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Yang,
	Zhangle \(Eric\)" <Zhangle.Yang@windriver.com>
Subject: Re: Contribute meta-installer to yocto
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
X-List-Received-Date: Tue, 28 Nov 2017 15:45:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 11/27/2017 09:20 AM, Mark Hatle wrote:
> On 11/21/17 3:24 PM, Burton, Ross wrote:
>> On 21 November 2017 at 08:55, Hongxu Jia <hongxu.jia@windriver.com
>> <mailto:hongxu.jia@windriver.com>> wrote:
>>
>>     If yocto is interested in this layer and will accept it,
>>     I could send pull request or some one directly fetch
>>     from above github master branch.
>>
>>
>> Are you asking for a git repo on git.yoctoproject.org
>> <http://git.yoctoproject.org>?=C2=A0 If you want one I believe the pro=
cess is to ask
>> Michael Halstead.=C2=A0 There's no reason why it can't be maintained i=
n this
>> repository forever though, =C2=A0just submit it to the layer index.
> The request is for more then just a repository.  (We can get a reposito=
ry
> anywhere..)  What he is asking for is, is this something that the Yocto=
 Project
> itself wants to own.  He is still offering to be the maintainer of the =
layer,
> but the project being owned by the Yocto Project itself has more implic=
ations.
That is an interesting question.=C2=A0 Are you suggesting a discussion wi=
th
the YP membership=C2=A0 since they are the ones who are providing the
resources for the Project?

>
> I.e. using the bugzilla, discussion on the @yoctoproject.org mailing li=
sts,
> etc... what happens if he is no longer able to willing to maintain the =
layer.. etc.
>
> In addition, my understanding is a target based installer has places to=
 insert
> logos.  Currently these are blank.  If the Yocto Project wants to be th=
e home
> for this, then I would also hope that specific logos would be approved =
for use
> within the default installer instance.
>
> If this is outside of the scope of what the Yocto Project itself wants =
to own,
> then OpenEmbedded is the next place that might see value in this.... if=
 not,
> then a github project will be fine.


Having an open discussion, like this is more in line with open source
philosophy and I thank you.

Kind regards,
Armin
>> Ross



