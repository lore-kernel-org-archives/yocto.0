Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22AB7E00AD8; Tue,  9 Aug 2016 12:35:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C825FE00A6A
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2016 12:35:41 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id vy10so1397939pac.0
	for <yocto@yoctoproject.org>; Tue, 09 Aug 2016 12:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=7Ak7n6sJyWEJhoBVb2f5s3UL+70Gpn+G6ztqndKIG5Y=;
	b=eixlBcx6a4m4bLVgS/jFZXT4FAEeuN5YnH4S4QNGoV8cByc/yYVQaYQ1IgWSU6b9JC
	MACKmvSue6t5BpvmXBaeRcd0Uuw7ZsoyVf20Y5VbbV76UmRzXM2UMXoFGegXNoIn4fH3
	SbzJVQw2CgeOfOcQ/Kt2CPLExuhTun5zCdoSk0pynru6SO/lmtgOGrURoYkZg0stKlH1
	L6BTLuqF+1Ny6aQY5h/VBghPw71M4UoXHApFGj35q9KntbNXx6jPl36e6v/WZo73tW/c
	jmbaj55nuk8AsMG4PxUiSMzV89ZKOO0c9WcJi3AJHS6FKeWg3aKPvn5dZfdlyEQtu3w9
	AYkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=7Ak7n6sJyWEJhoBVb2f5s3UL+70Gpn+G6ztqndKIG5Y=;
	b=k7t/5wG6+yHCCo30AaSUB2vNLqBJEJKtrzUhygefGMVIthbzkO8wESkF8L6qh5rrEq
	C9CvwdBEZQwpfFhQ+SOnUNvBrg1eg4+woLOAdxOXc42UR31CpwI0s//cdu+Jhm1NXFfA
	E0ZNhHc7GGkOD+ic6YT6O9iSYnfDX4bkMYdjgs7jfs+H5yi3H1JxBpNADxjP4fArE0ua
	NkLtCxj9EQg5gLZ/6snuZbcfNp8svCuRwySGHtjaDxSx/h+xLv6Wy4V4oEXDkfioHyoD
	+3W0pzPedko3Sj4M21dznrp/BP9dvEj/1TwJKc9GPJYA7s327mNd0jZ78APF8CXAL+U5
	uNSA==
X-Gm-Message-State: AEkoouvoQW6k9m6X/kRGQ29k0PKOJQguDKjsGZ6hKbLvXnEryCwdjtN2sz2Vy6Ul2mVdqg==
X-Received: by 10.66.14.161 with SMTP id q1mr36915pac.103.1470771341080;
	Tue, 09 Aug 2016 12:35:41 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:29dc:cb12:3198:ca66?
	([2601:646:8882:b8c:29dc:cb12:3198:ca66])
	by smtp.gmail.com with ESMTPSA id
	w64sm57886833pfb.93.2016.08.09.12.35.40
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 Aug 2016 12:35:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <32f35f59-c150-838f-4a53-d7dab0648252@gmail.com>
Date: Tue, 9 Aug 2016 12:36:16 -0700
Message-Id: <34036CC4-991B-4ED1-AB67-3F54E0C610B9@gmail.com>
References: <1470151429.3175.189.camel@linux.intel.com>
	<5598b740-e529-52a3-91e0-e4b34d2bde01@balister.org>
	<32f35f59-c150-838f-4a53-d7dab0648252@gmail.com>
To: akuster808 <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 7, 2016 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 09 Aug 2016 19:35:44 -0000
X-Groupsio-MsgNum: 31432
Content-Type: multipart/signed;
	boundary="Apple-Mail=_980C9E92-A417-4770-870C-4AEC9A90747F";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_980C9E92-A417-4770-870C-4AEC9A90747F
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


> On Aug 3, 2016, at 8:17 AM, akuster808 <akuster808@gmail.com> wrote:
> 
> On 8/3/16 6:19 AM, Philip Balister wrote:
>> 
>> On 08/02/2016 11:23 AM, Jolley, Stephen K wrote:
>>> Attendees: Saul, David Wolfe, Joshua, Belen, Ross, Mark, Bill
>>> 
>> ....
>> 
>>>        Poky - LTS/LTM Branch
>>>        - Community Driven
>>>        - 2 Years
>>>        - Companies continue to push on older branches that they are
>>> interested in.
>>>        - Most patches would be in Oe-Core meta-data
>> This kind of jumped out at me. Can anyone explain why the Yocto Project
>> needs an LTS version of the reference distribution?
> 
> I am glad you asked.
> 
> In order for a Yocto Member to be Yocto Compatible, any changes made to
> Bitbake or OE-core have to be submitted to the mailing list. If I have
> to submit changes then is makes sense that there be a central place like
> a repo where these changes can live. We have this for the first year.
> MontaVista and I am sure other Member's support products beyond the
> first year.  It seems natural to have a process in place to continue the
> behavior and work Yocto Members are required to perform to maintain
> Yocto compatibility. Or are you saying Yocto Compatible is only good for
> 1 year?

Dont we accept patches indefinitely as long as they keep coming?
so in theory every branch is LTS for someone if one cares enough
about compatibility with compliance programs. However, LTS does provide
a cushion for decision makers, practically, I see we are doing it
ever since.

> 
> It not so much having an LTS Poky as much as having LTS branches for OE
> core and bitbake. This means Poky would not have to be kept updated nor
> would the Yocto Project need to build or QA the LTS branches.
> 
> As I see it, an LTS branch would only exist if there is a need and is
> supported by the ones who desire the LTS branch.  I am sure there will
> be some prerequisites in doing this.  I don't see this as a bad thing
> for the community or the Project.
> 
> regards,
> Armin
> 
> 
> 
>> 
>> Philip
>> 
>> 
>>> * Team Sharing - 10 min
>>> RP has branch with multi-config in parallel
>>>  - fixes various other tools
>>>  - Distributed builds in 2.2 is unlikely due to resource constraits
>>> 
>>> Thanks,
>>> 
>>> Sau!
>>> 
> 
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_980C9E92-A417-4770-870C-4AEC9A90747F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleqMLQACgkQuwUzVZGdMxR55gCeOE+eTdZ+ycCwDmBoZVscZZCT
TuMAn383G788AT71TdddXu7bvK3BLsmD
=cnZ3
-----END PGP SIGNATURE-----

--Apple-Mail=_980C9E92-A417-4770-870C-4AEC9A90747F--
