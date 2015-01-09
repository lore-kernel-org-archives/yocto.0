Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9528E00828; Fri,  9 Jan 2015 11:45:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 179EEE0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 11:45:05 -0800 (PST)
Received: by mail-pd0-f172.google.com with SMTP id y13so19166077pdi.3
	for <yocto@yoctoproject.org>; Fri, 09 Jan 2015 11:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:openpgp:content-type;
	bh=Dg9+JAMIGa+SSkS75NJB1wWYwGaFMJlvJa2Wd3WBJFc=;
	b=Yfgeqp6/UJaWNwM4ILn4wvH5HwdY2E1+s6HvO2heRY6Vl4DI3yk9avAHLqRVHE7Uwn
	BuMDRKMU7FLEZ4wG+IDw8a6b9yXTqpRWBZwk65UWgPVkREpa3JqIWvYIQenBsJyEAAhi
	XYjpEeOtqklKsKIPdqrdY7R/B/0NUAScUlyQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:subject:references:in-reply-to:openpgp:content-type;
	bh=Dg9+JAMIGa+SSkS75NJB1wWYwGaFMJlvJa2Wd3WBJFc=;
	b=BaZyRhzvrZtNnKuo3YaFe9htilNM5rEFD1CtWkg0uEgdiYSN2uctHXwN7xi/KcC86j
	SuPfLmYu8TrHJCxLvaw0xIN+jUY/igYdRmL1vYcgOtG6yQMkHwfn0zhbNwmBGlp1O5xa
	fPwMhMofypn7V/YU4P7k7VE7Ugigxv/6kx6CKZcn2cxoL9xXmIHR8NVGSOWXRE2KxVvh
	Z8JHuLpkasCFenAEUnNKJDXscWp+cEzKE2gvMaQEdJKKSTabyGFntaAXNUwEk0CaxlCI
	yO6ceyzGih2BIJmnlS016v78TQcE+6a8HVigFJPBQ7BI9U8t/P8qrQSJgKw7Ig+JDl6/
	BAUA==
X-Gm-Message-State: ALoCoQmAMexbBTgqSDzWeo6Qw2cTbUL/cC/gefrTMBfRvHWd02HXTKLnns2f04HEWx0opwDNG8TX
X-Received: by 10.70.98.161 with SMTP id ej1mr25842281pdb.91.1420832703232;
	Fri, 09 Jan 2015 11:45:03 -0800 (PST)
Received: from pride.local ([2001:470:e969:0:6680:99ff:fe39:40a4])
	by mx.google.com with ESMTPSA id pb6sm7778537pbb.13.2015.01.09.11.45.01
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 Jan 2015 11:45:02 -0800 (PST)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <54B02FB4.2090603@yoctoproject.org>
Date: Fri, 09 Jan 2015 11:44:52 -0800
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org, Matthias.Heise@atlas-elektronik.com
References: <4009F04F5925CD4C95FBD9BE756381FE02929D60BA@MSSRVS5.atlas.de>
	<54AFFCF2.5020501@linux.intel.com>
In-Reply-To: <54AFFCF2.5020501@linux.intel.com>
OpenPGP: id=01861969
Subject: Re: can't pull any sources anymore
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
X-List-Received-Date: Fri, 09 Jan 2015 19:45:12 -0000
X-Groupsio-MsgNum: 22901
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="uW3JvTk2SWdaNG1ljRGE5Ab5nwAkBH7So"

--uW3JvTk2SWdaNG1ljRGE5Ab5nwAkBH7So
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On 01/09/2015 08:08 AM, Saul Wold wrote:
> On 01/09/2015 06:10 AM, Matthias.Heise@atlas-elektronik.com wrote:
>> Hi,
>>
>> I'm not able to pull any sources for a little time now. As test I
>> re-tried an already working setup by again following some tutorial
>> and trying to setup a fresh repo. The repo init works but the sync
>> fails. I should mention that due to network limitations I replace
>> git:// urls with https:// . Is it possible that this doesn't work
>> anymore (I mean it is replaced but maybe the online repos don't
>> support it anymore seamlessly)?
Mat,

Please note that the git:// and http:// URLs have a different structure.
For example,

git://git.yoctoproject.org/poky
http://git.yoctoproject.org/git/poky
https://git.yoctoproject.org/git/poky

You can find these URLs at the bottom of any project page in cgit
http://git.yoctoproject.org/cgit/cgit.cgi/poky/

Please try running "git clone https://git.yoctoproject.org/git/poky" and
if it fails send me the output.

Thank you,

Michael Halstead
Yocto Project / SysAdmin
>
> Can you be more specific, are you talking about the git repos at
> git.yoctoproject.org or some other git source?
>
> You say a "repo init works", does that mean an initial clone or ?=20
> What commands are you running?
>
> I think a little more information is needed here.
>
> Sau!
>
>> Thanks
>>
>> Mat
>>
>>
>>
>>



--uW3JvTk2SWdaNG1ljRGE5Ab5nwAkBH7So
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJUsC+5AAoJEH9hAclg9EfI/4MH/jqs42czgK8TkB3JikanSAjm
J7i0eDt6NIW+pg/1prJUVYuLg/jYMlPotw4N2kKZOlJD0jjjrcB7WepDavPfPJoX
0e6okVc0zhJDEGMONtIvy1k7XRlxjWbmZXVwSawVdmemHrIu7YbR9LGmK5C1uNgL
WAt5fc6VWLy8I34lY83tQWuG7t1pdbVr3UFJQ3cmFXZQiLGG8gfhSIyoZ0Wbj03L
2+Vos2Jpi7QIm2gyp68v0NJcmQGKWhR0mnEyWjMlEdZJlCSBrvWnlXHHh85LTAvm
/sX4xCUwSrcenz5rP2ubm/lqvgR8199NOHjOt3mZFsPBcOKB/bVzZ3Vm4pMfoLo=
=zimC
-----END PGP SIGNATURE-----

--uW3JvTk2SWdaNG1ljRGE5Ab5nwAkBH7So--
