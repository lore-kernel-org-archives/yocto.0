Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9DB2E009BE; Wed, 15 Apr 2015 05:20:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D546E00954
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 05:20:33 -0700 (PDT)
Received: by pabtp1 with SMTP id tp1so49314135pab.2
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 05:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:openpgp:content-type;
	bh=cIFt6DQwfTg23tT7AncpIrJ2exKuYDSDSCEeGHP3BLY=;
	b=iHaVrwAjdR7aniVsE8JdNBfAiwJFwXB927jjffuEKbf2OHi+bij2Ta/ls6uetXmoOT
	fKemCemogzs5rr66Sou3psZaHs1+oWnNhlG2d5rbmR5HTqr3xi8gL8sez7XYkbFUHBYN
	mIUleM//ySJdNvU6CgNfnW2dEEZFgjJRnmFMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:subject:references:in-reply-to:openpgp:content-type;
	bh=cIFt6DQwfTg23tT7AncpIrJ2exKuYDSDSCEeGHP3BLY=;
	b=E07h7sfW1YiRABmhlg/fLzrefLiZUisPazXd8sE3JVrInntZNIBiUCgnNUpHae55aX
	rR/fpHtoOJTBW1Y4V5SzLt0XQ6TFY4LdZmQv9e443kh5yAS429N6ngYb2HVVfozAybfj
	A4TuGZ7y5wUd7Zo5BtE0GjOcIHKK87ovfScGIpGJy9m8fKV/CHAqmGdCcrSiN9IDRCVU
	9qWM2aa5ep3DJcalmI6QWNOVgWgTeLQlalgl8QD8qK25OGuqbhJ1z37SHqPSz8S69/hh
	l1amY5l8xpQhlie56edwk0v5jIH2n/ORjDXgrD9z1eWbsA9x7QFnm0ERN6nhvxLVI4aq
	hFJQ==
X-Gm-Message-State: ALoCoQkNGGAF0gT5h+3FA0Cy8BQ0sFWpd1dBJXmFL+MibddwNAz/2VCW8x7t1hnJEMFpUgjduwPo
X-Received: by 10.68.69.45 with SMTP id b13mr46150579pbu.150.1429100432779;
	Wed, 15 Apr 2015 05:20:32 -0700 (PDT)
Received: from [192.168.17.102] (static-50-43-13-43.bvtn.or.frontiernet.net.
	[50.43.13.43])
	by mx.google.com with ESMTPSA id wn4sm4058566pac.16.2015.04.15.05.20.31
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Apr 2015 05:20:31 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <552E578A.7000904@yoctoproject.org>
Date: Wed, 15 Apr 2015 05:20:26 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CADUpHn9xaSy=EAmyK2gCyTd6Lgb=qKXwm19KExn1QXroh8w8Kw@mail.gmail.com>	<552DDC1C.3090401@windriver.com>
	<CAPhnLPB+zxYDc2UFkPNKh6xMPbsLE9AgTqy0=HjPf_0=QEyANA@mail.gmail.com>
In-Reply-To: <CAPhnLPB+zxYDc2UFkPNKh6xMPbsLE9AgTqy0=HjPf_0=QEyANA@mail.gmail.com>
OpenPGP: id=D1F2407285E571ED12A407A73373170601861969
Subject: Re: 1.7.1 ADT-installer errors
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
X-List-Received-Date: Wed, 15 Apr 2015 12:20:35 -0000
X-Groupsio-MsgNum: 24464
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="SPlV3LVnAPgo4nWp8lNhArhc5bVxTiOEG"

--SPlV3LVnAPgo4nWp8lNhArhc5bVxTiOEG
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A change in the rsync configuration caused all symlinks to break during
the most recent sync to the mirror front ends. The error has been
corrected and the adtrepo links will be restored from the source shortly.=


Michael Halstead
Yocto Project / SysAdmin

On 04/15/2015 04:50 AM, Flanagan, Elizabeth wrote:
> On 15 April 2015 at 04:33, Yi Zhao <yi.zhao@windriver.com> wrote:
>> Hi,
>>
>> I can confirm it is an issue.  I got  a 404 not found error when I tri=
ed to
>> download the core-image-sato-sdk-qemux86.tar.bz2 from
>> http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/. Looks like the
>> symbolic link is broken.
>>
>> Beth,
>> Would you please have a look at this and fix it ?
>>
> Sure, it'll take me a bit to get access to the infrastructure but I'll
> get to it when I have access.
>
> -b
>
>> Thanks,
>> Yi
>>
>>
>> =E5=9C=A8 2015=E5=B9=B404=E6=9C=8814=E6=97=A5 16:24, heli Atck =E5=86=99=
=E9=81=93:
>>
>> Hi, I'm new to Yocto (and embedded Linux for that matter). I was follo=
wing
>> the ADT manual to get started with application development. I tried us=
ing
>> the ADT-installer script, but ran into some errors.
>>
>> Here's the relevant part of the installer log file:
>>
>> Creating directory /home/spe/test-yocto/qemux86...
>> Extracting rootfs: core-image-sato-sdk-qemux86.tar.bz2, using pseudo..=
=2E
>> tar (child): ./download_image/core-image-sato-sdk-qemux86.tar.bz2: Can=
not
>> open: No such file or directory
>> tar (child): Error is not recoverable: exiting now
>> tar: Child returned status 2
>> tar: Error is not recoverable: exiting now
>>
>> There are no files in my /download_image directory so I guess they hav=
e not
>> been properly retrieved from the repository. I looked at the repositor=
y for
>> 1.7.1 at http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/ and som=
e of
>> the relevant files seem to be missing.
>>
>> Or did I mis a step somewhere?
>>
>> Sammy
>>
>>
>>
>
>



--SPlV3LVnAPgo4nWp8lNhArhc5bVxTiOEG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVLleKAAoJEH9hAclg9EfI2swIAKvSl9Z4Urc4z0/HF/sXdCrH
VwzFJj2OPFWdA5W6E3wz5iRzoZBg3IBXCLooGEilLhX6MKDttKmVTBQbpf2WikUV
nSC990FpjRjQRwJYg3LVhzN5HsDGa6kwf8t0HZZY7H8kcJlsf/tFLuyWn1aMr/cU
OmuwcyReRrkF62BaGetV42DjWH88R5O9RQ+T5rozaP7kl0kVCa+okETg3JK1lDws
cFF+rKse8gmCHFkO2564m9+suHEDlzqSlZVjFmID5O8+jNXzoZolFGWMahx0TRWb
ub8waZ1Jvkd5Kx2/DmFPPND0sCVxUGwwiuglDlAxhZxlDSJjFVPEsyYqBNkmhTw=
=Fk2e
-----END PGP SIGNATURE-----

--SPlV3LVnAPgo4nWp8lNhArhc5bVxTiOEG--
