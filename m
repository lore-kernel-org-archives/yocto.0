Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9623EE0183C; Wed, 13 Jun 2018 09:29:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C000E0166F
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 09:29:02 -0700 (PDT)
Received: from [10.175.196.108] ([37.123.169.62]) by cmsmtp with ESMTPA
	id T8dofRaHM19K9T8dofygD2; Wed, 13 Jun 2018 18:29:01 +0200
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15B202)
In-Reply-To: <20180613132009.GA11193@ad.chargestorm.se>
Date: Wed, 13 Jun 2018 18:28:59 +0200
Message-Id: <D6C2C352-896F-4D2B-A499-4526393B9418@emagii.com>
References: <3cf3fb0e-02c4-8867-7650-8764bfb67a3b@emagii.com>
	<b02028a72c604aa1bce0e40bc0089f43@XBOX02.axis.com>
	<9EEEF203-2371-4CCE-8E70-947330CDB462@emagii.com>
	<20180613132009.GA11193@ad.chargestorm.se>
To: Anders Darander <anders@chargestorm.se>
X-CMAE-Envelope: MS4wfAc0gU8Zhg/xVHWeDxGxHxKwqHIPsrNyWe1UwDQ8YD+TJWwLSH0GqmFM1Me4DVzhJNOefK3lFhIb0PcSPA/r4pIETH/LCDXd6xiAc3ycb7pB5dFBx7kT
	c50PNj6UJgLZGEANiZuabLMvfOORFFwYiW3aYbLIPkJEeTMjhoK0ZLU3HHW/j9jzfZsADJKKVcTALu2d7howyY5sIkK8Dea1VColKS5+OY0zrfEv5kSk1XCZ
	moLcFNvxJZuopuEEjCGJRw==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How handle files needing updates in read-only filesystem
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
X-List-Received-Date: Wed, 13 Jun 2018 16:29:04 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks, is it more efficient than symlinking?

Best Regards,
Ulf Samuelsson

> 13 juni 2018 kl. 15:20 skrev Anders Darander <anders@chargestorm.se>:
>=20
> * Ulf Samuelsson <yocto@emagii.com> [180612 22:01]:
>=20
>> We want most of /etc to be read-only for security reasons,
>> and the overlayfs will make the whole of /etc writeable.
>=20
>> I tried mount =E2=80=94bind /etc/timezone /persistent/etc/timezone, and i=
t
>> complained that they were not directories. Bind mounting /etc again
>> will make all of /etc writeable.
>=20
> Try to use: mount =E2=80=94o bind /etc/timezone /persistent/etc/timezone
>=20
> I'm using that heavily, either manually or by the volatile-binds recipe.
> It works perfectly fine with files.
>=20
>> Symlinking to /persistent is fine, so the question is what an
>> acceptable method is to have a simple way of ensuring that a certain
>> file is converted to that symlink.
>=20
> This is normally done by a manual inspection / addition of bbappend
> file.
>=20
> Cheers,
> Anders
> --=20
> Anders Darander, Senior System Architect
> ChargeStorm AB / eStorm AB


