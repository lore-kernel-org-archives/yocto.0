Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCC03E0078E; Sun, 19 Oct 2014 15:06:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98813E0071C
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 15:05:54 -0700 (PDT)
Received: by mail-pd0-f176.google.com with SMTP id fp1so3743127pdb.7
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 15:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:openpgp:content-type;
	bh=Htmht6ByHFTvfMr1TqoKXOx5C2UdRaD9+rC/LdGORww=;
	b=KSWdkIzR83lkutx3t/pvvJiI7daptx8uDleT7APywp+DI5YC4I9omN+i1O0nSfqsJh
	NHJdNAZ2QXXmKsZDNVqQsgku0fVFuf+V74P6YG0sEOszPrWe5p9OgoN+gdwOtw082B3w
	yLhEEFPuw+8SkMHiWawAVHHelILChxb3WlxRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:cc:subject:references:in-reply-to:openpgp
	:content-type;
	bh=Htmht6ByHFTvfMr1TqoKXOx5C2UdRaD9+rC/LdGORww=;
	b=e8xSOHMJWIGbT+Ps+BZ9ubYvtro1sczN2YgVgu68zOg7jV/f9T7cIDS2b0nf26GpTc
	JWSQt4JDIg+2uIPucv7yHbZ54iUeUVQ7iwAmGiLAamUEkStF6q7Mc/ud3xVRhVytFAAe
	/dBkoamMmtt1kYyMDuBRGHZRh51BZNlKtvjgN24vjortle4YRe13Uvn/FmczG2+PdZBL
	bctLzPZh8XdWqu4SxFHbjBgdrrvdAvtDKpHW+WrRGV8PJzRDDLdPpd2kCgdx3IocASbk
	Z9U91FzQLo+y6NGLgxARWiaKIGpRWSRInF8Tfz68qxMNFBEBJMTpTXBJyC7Y/YerIRaz
	EvgA==
X-Gm-Message-State: ALoCoQkf9Gb2qTz3+VwwnsM2Z3OPRBF6ScLWrkGAEIbIc3NkHACobmu/iA0+uL08iI0c8gO98Afy
X-Received: by 10.66.121.232 with SMTP id ln8mr23070230pab.5.1413756353794;
	Sun, 19 Oct 2014 15:05:53 -0700 (PDT)
Received: from pride.local ([173.240.246.140])
	by mx.google.com with ESMTPSA id i2sm7457437pat.3.2014.10.19.15.05.52
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Oct 2014 15:05:53 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <544435BD.4080001@yoctoproject.org>
Date: Sun, 19 Oct 2014 15:05:49 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>, 
	Elizabeth Flanagan <elizabeth.flanagan@intel.com>
References: <20141012005156.D66DC2C0219@ubuntu1204.osl.yoctoproject.org>
	<CANyK_8fVecgg=pZnV9fwqz=YB3OM9mmm2MN4JD=L0ct15qKBpQ@mail.gmail.com>
In-Reply-To: <CANyK_8fVecgg=pZnV9fwqz=YB3OM9mmm2MN4JD=L0ct15qKBpQ@mail.gmail.com>
OpenPGP: id=01861969
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Release Candidate Build for yocto-1.7.rc4 now available.
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
X-List-Received-Date: Sun, 19 Oct 2014 22:06:04 -0000
X-Groupsio-MsgNum: 21859
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="9gbF6M2l9wK8NfV10GGAmhHbdiC1XCbrl"

--9gbF6M2l9wK8NfV10GGAmhHbdiC1XCbrl
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

The QA_MAIL_CC value in ./config/autobuilder.conf needed to be comma
separated. I think it is fixed now.

Thanks for the report.

Michael Halstead
Yocto Project / SysAdmin

On 10/12/2014 04:33 AM, Paul Barker wrote:
> On 12 October 2014 01:51, Poky Build User
> <pokybuild@ubuntu1204.osl.yoctoproject.org> wrote:
>> This is an automated message from
>> The Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder
>> Email: elizabeth.flanagan@intel.com
> Beth,
>
> I noticed that the Cc list for the original email looks to be corrupted=
:
>     Cc: ""@ossystems.com.bryi.zhao, elizabeth.flanagan@intel.comyocto,
>          ""@windriver.com, ""@yoctoproject.orgalexandru.c.georgescu,
>          ""@intel.comotavio
>
> Just letting you know incase you missed this and it needs attention,
>



--9gbF6M2l9wK8NfV10GGAmhHbdiC1XCbrl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJURDW9AAoJEH9hAclg9EfIf7gH/3tUuHGRQjly6gIzre62nIHU
CMkJYCB++EtqSK6Cf5GIDIV/Ri+xECTx1sYdkJ0+g0xiZkklqLQFR108LuGGrT89
jgcBH/f/hjZuNjXAXpCyq+wOJJPbccwq3dU9b63w5AovDTQPjGeMknZbc0VqJ8is
ozHWvMjJPT/cHaDKD4AIF33fad5Gx65Bl7FxdbNmlbVXJ0ywppSidAPydoxBUy7s
dOKScRCckDOjRrfE3lxLvTfsF2dTOe8UCqGca1Os93hHFu7Mj1uS8LTokQx8aeYQ
6JvXMxVhheBlR7hM7bDHriisGLi2bublpCU5YuW29w/9bAbiM1oxB5q4Xw2iGsI=
=KUsH
-----END PGP SIGNATURE-----

--9gbF6M2l9wK8NfV10GGAmhHbdiC1XCbrl--
