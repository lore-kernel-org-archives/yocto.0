Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97AE1E007DC; Sun,  7 Feb 2016 09:20:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0741]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1758 seconds by postgrey-1.32 at yocto-www;
	Sun, 07 Feb 2016 09:20:07 PST
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F99CE00404
	for <yocto@yoctoproject.org>; Sun,  7 Feb 2016 09:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=Mime-Version:To:Message-Id:Date:Subject:
	Content-Type:From; bh=myQjAcUlFVtR7EgE5UresYWhVhAxu6ZrcbGfpeBWbS0=;
	b=srLuh5m
	k+Fg0x7lmHasLUdUxZpxaz1A7pyueF9nyAGbGS/bqFqZmEGNGaIEi3FfP8zCJjntT/VQ+xX+mjdiJ
	bAdtflrJa6HOD755MiBnST7M/H6bVeuHUsBfWGmrHCZI7KFw4xO+H1QY9zNoQgC9GWHVnIzZzfO/Y
	4GBOPsgpEI=;
Received: from durham.keylevel.com ([88.97.63.243]:34998
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.86) (envelope-from <opensource@keylevel.com>)
	id 1aSSXt-001a77-AU
	for yocto@yoctoproject.org; Sun, 07 Feb 2016 16:50:45 +0000
From: Chris Tapp <opensource@keylevel.com>
X-Pgp-Agent: GPGMail 2.6b2
Date: Sun, 7 Feb 2016 16:50:37 +0000
Message-Id: <020DD3FF-9405-4003-9C1B-F29F060567BD@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Installing only part of linux-firmware
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
X-List-Received-Date: Sun, 07 Feb 2016 17:20:15 -0000
X-Groupsio-MsgNum: 28336
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C36E0CB8-E64F-4355-8940-B4131D15D094";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_C36E0CB8-E64F-4355-8940-B4131D15D094
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Is there a way I can just pull in part of the linux-firmware package =
into my image? I need rtl_nic, but to get this I have to pull in the =
whole of linux-firmware, which is 54M and forms over 1/3 of the final =
image.

It looks to me as if I=E2=80=99m going to have to find some way of =
packaging this myself?

I=E2=80=99m currently building under =E2=80=98daisy=E2=80=99.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_C36E0CB8-E64F-4355-8940-B4131D15D094
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWt3XmAAoJEAM2GeiJDBSGM9AQAMFGCCfArLWNWaJXnAiWenyM
TXWjB4hTdOK1gUSEjpfqT05EJfkZLOaNcDwN4W+UyAD1OYlfnIu0VDtao4p7fYS7
bRGfdfS7UfGYxuml8/EjjfvuvfERFG0phlii4qleqomZF60mqaP3kNCghiSCG1nT
llRnrcJHzbIGjyy57gcmhP52yMYAXwNEpt53R4IklbiW8CO97ruoIH7UxoBcifWR
m1gAHPy6sznZ8kLHPpYmrlM7l+kVH8rU+zARnrPqsK++g+RfPCIXpSbY1ODgdwgw
px5ov7MCh3XCW8xycCaLENXrisNPncU5M6kmcXA2gdnNMY5y7aKcvCSJfwFcNX+d
bzsNmKAkdwq4Pl1iM69TDTcM8EIwBc97PAJR+XQa3iVgn6rE+4QK8BZVzMwo53jp
uYEygBNXyjs2koVnHRKVlHPEkh3XHgGV1U98PHJH/GPzdr1tKJf9BfTpTgM5a6T7
Ybnu5T7U3yjW4Q4G1NC64h7g3F0B+3NkdIwlU6iiQQt9JyFfKJrcFfrneFWsgwff
nAWdNTpWoywq95uXPnGS0gN22JGEGOefG6N+YILvYFeozUkc+aNJC2/qtzE+wIZG
tOUxmDdW4nB41R2MRMxf6EyTZUUdFbaKuPejhFpchASfmhuAT3eoxziJbUDhhf9E
bdAM3mrdCSz2dkh++lmo
=A3o0
-----END PGP SIGNATURE-----

--Apple-Mail=_C36E0CB8-E64F-4355-8940-B4131D15D094--
