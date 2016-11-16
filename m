Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00942E00CD6; Wed, 16 Nov 2016 10:06:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85EF4E00955
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 10:06:37 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id e9so14913565pgc.1
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 10:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=SYDFQ/N9u7Gn9klsXRY/UPMI+ENxMSFrh1bV3lum7cU=;
	b=kwSFSq5xPGBtHUyIbg+4JMyyhILDO/NghSWZLROJau+omEOI8d3LO62emfR9KVdRJX
	XICnnIL2Zj7P/nX2xFlxzUa3V1Lm/EQUEMJ3pxyoSdPT7YnlKu7D6kQKIt1iLrbM5yVo
	aBc5AZVi+/oZLW1NYxLaoDzxRMZEYnrOp5exYwqoR2sNh9M1OiCi9Ihfrm2ocAb3QSi+
	YaJLk4wu04lM9oQ2u5RnxjhQ3+q2CLExWxCtbE+qSUZrqSUneQO2isU8U+74X8sbK3ka
	O9WyklbrYF3odpBxRR2VvEYDz1DhzP5n1Jqu9H1r2MjlM1lLIqIsksh4mKRxuN33bKzZ
	+a6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=SYDFQ/N9u7Gn9klsXRY/UPMI+ENxMSFrh1bV3lum7cU=;
	b=eILJSJaML2cyabGwGmj2a+GXc3xK8/SlJF60TEoXy/cNGsreS7+ljQSdkHZ/whnQwP
	M72mJ901SFW00fuOmmkcMm1WSv5p0i0a6hX8hJvrBXvHMgLEiuFS5w1ir/NsIB6Cc2Zu
	dS2CVF/eWvA6TxTXmh3UZs6qhlTAwBPvDzeOs4XQW6Mwu/nKzyHpxPJr9R4AxD+lADHj
	MQBAPh8wtUqn8VhcUrCjAdM2ACYXrlEAODHWJRBMtkZCLbczoYfdM1pKF8iakh3iVd54
	u1Q1xlGUXSVhe/ni9/La7NGpPJMzga20DxYSbdgCZHSBvr2gIRyPhJaXznOcmLxHGA67
	8Xhg==
X-Gm-Message-State: ABUngve0V1jurPoyN4GvlYHYvb/GxH6CT5h3b2FnIa0U/OenAjh4BUU3Yb4tweoJ/HP7+A==
X-Received: by 10.98.7.151 with SMTP id 23mr6356370pfh.5.1479319596829;
	Wed, 16 Nov 2016 10:06:36 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:253b:db0b:7823:74ba])
	by smtp.gmail.com with ESMTPSA id
	u127sm55985625pfu.21.2016.11.16.10.06.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Nov 2016 10:06:36 -0800 (PST)
To: Gary Thomas <gary@mlbassoc.com>, Jussi Kukkonen <jussi.kukkonen@intel.com>
References: <e433f791-614b-6f53-edc0-e8fe34c7341a@mlbassoc.com>
	<CAHiDW_HZLEGiPG7nXOx5hPce4WTC+v0Mkhv6+TGB1=wsCO+rVg@mail.gmail.com>
	<0583f5ed-b9d5-936b-5477-db944299c064@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <cd8268c6-3a2e-6d0c-c54d-5506baa375a6@gmail.com>
Date: Wed, 16 Nov 2016 10:06:30 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <0583f5ed-b9d5-936b-5477-db944299c064@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel too old?
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
X-List-Received-Date: Wed, 16 Nov 2016 18:06:38 -0000
X-Groupsio-MsgNum: 33003
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="F9kWeLBcnR7urxgx7AUeCRfLhriJA4mhN"

--F9kWeLBcnR7urxgx7AUeCRfLhriJA4mhN
Content-Type: multipart/mixed; boundary="hbwFRLINoMDLWsdGoSKV1awaEW9G0cBGV";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>, Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <cd8268c6-3a2e-6d0c-c54d-5506baa375a6@gmail.com>
Subject: Re: [yocto] Kernel too old?
References: <e433f791-614b-6f53-edc0-e8fe34c7341a@mlbassoc.com>
 <CAHiDW_HZLEGiPG7nXOx5hPce4WTC+v0Mkhv6+TGB1=wsCO+rVg@mail.gmail.com>
 <0583f5ed-b9d5-936b-5477-db944299c064@mlbassoc.com>
In-Reply-To: <0583f5ed-b9d5-936b-5477-db944299c064@mlbassoc.com>

--hbwFRLINoMDLWsdGoSKV1awaEW9G0cBGV
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/16/16 4:08 AM, Gary Thomas wrote:
> On 2016-11-16 12:55, Jussi Kukkonen wrote:
>> On 16 November 2016 at 13:29, Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com>> wrote:
>>
>>     I'm trying to run some user code on a [closed] box that it's
>>     difficult (maybe impossible) to update the kernel.  To date,
>>     I've been able to create my own user environment using Yocto
>>     and then just 'chroot XXX'.  That came to an end today with
>>     the latest (version 2.2) like this:
>>
>>       DiskStation> chroot /volume1/MY.test/
>>       FATAL: kernel too old
>>       DiskStation> cat /proc/version
>>       Linux version 2.6.32.12 (root@build5) (gcc version 4.3.2 (GCC) )=
 #3202
>> SMP Fri Mar 1 01:04:06 CST 2013
>>
>>     Where '/volume1/MY.test' is my Yocto-built root file system.
>>
>>     Is there any way around this if I can't update the running kernel?=

>>
>>
>> Modern glibc needs linux 3.2, see
>> http://repo.or.cz/glibc.git/commit/5b4ecd3f95695ef593e4474b4ab5a117291=
ba5fc
>> (apparently on x86* you could still get away with setting OLDEST_KERNE=
L to
>> 2.6.32).
>=20
> Given that my code was running fine as recently as mid-summer with
> a version of glibc that was called 2.24-r0, do you think I can get
> away with this?  Can I just set that variable in local.conf?

You could try setting OLDEST_KERNEL =3D "x.yy", while you wont get
your system dead in water, you will have issues using older kernels
so that you know, you are treading your own path here and will have to
support issues arising out of this combination

>=20
> (I know it's only speculation...)
>=20
> Thanks
>=20


--hbwFRLINoMDLWsdGoSKV1awaEW9G0cBGV--

--F9kWeLBcnR7urxgx7AUeCRfLhriJA4mhN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgsoCoACgkQuwUzVZGdMxRmtgCeLbZBIST95cQ/pK64X31bVFDE
/9QAn0FIFp4rECfu0ph3Nq1k6Utv0sis
=u5JG
-----END PGP SIGNATURE-----

--F9kWeLBcnR7urxgx7AUeCRfLhriJA4mhN--
