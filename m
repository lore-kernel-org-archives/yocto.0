Return-Path: <allen.curtis@curtisembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A7C0E00E54; Wed,  7 Oct 2015 10:43:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [69.89.25.95 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0008]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 397 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 Oct 2015 10:43:32 PDT
Received: from gproxy1-pub.mail.unifiedlayer.com
	(gproxy1-pub.mail.unifiedlayer.com [69.89.25.95])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 82CA9E00843
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 10:43:32 -0700 (PDT)
Received: (qmail 9023 invoked by uid 0); 7 Oct 2015 17:36:51 -0000
Received: from unknown (HELO cmgw2) (10.0.90.83)
	by gproxy1.mail.unifiedlayer.com with SMTP; 7 Oct 2015 17:36:51 -0000
Received: from box410.bluehost.com ([69.89.31.210]) by cmgw2 with 
	id SHch1r0154Y0hd901Hckcq; Wed, 07 Oct 2015 11:36:49 -0600
X-Authority-Analysis: v=2.1 cv=Jv9i8qIC c=1 sm=1 tr=0
	a=ETof7DMrXRHAC+dJixH5gQ==:117 a=ETof7DMrXRHAC+dJixH5gQ==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=3_4UIzzJAAAA:8 a=N659UExz7-8A:10 a=mHfT8ucao3sA:10
	a=o0XNLtqhUCMA:10 a=5lJygRwiOn0A:10 a=uLO53zp4g26wkX06B7sA:9
	a=pILNOxqGKmIA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=curtisembedded.com; s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=6dbPWUizfcjzgTUvxvST0cjfMWXW756+4H2qXYEMxV0=; 
	b=cZn3ieTXDrEvNISyHGm4ZsyPcXAJaoh3WP4YwjXULmta7WcSU6Vqi55RsZXvwijCKWbQt1lt7mrVU0h0yp7u5OTZkwcx71Zzgd50wFTx4axLCtlRky3q5usLluyKnDPY;
Received: from [68.225.237.157] (port=52731 helo=[192.168.0.3])
	by box410.bluehost.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.84) (envelope-from <allen.curtis@curtisembedded.com>)
	id 1Zjsdv-0002zo-9z
	for yocto@yoctoproject.org; Wed, 07 Oct 2015 11:36:43 -0600
From: Allen Curtis <allen.curtis@curtisembedded.com>
Message-Id: <591A7BB6-5C46-4D67-B8BC-9F6E57442A40@curtisembedded.com>
Date: Wed, 7 Oct 2015 10:36:40 -0700
To: yocto <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
X-Mailer: Apple Mail (2.1510)
X-Identified-User: {2323:box410.bluehost.com:actwoent:curtisembedded.com}
	{sentby:smtp auth 68.225.237.157 authed with
	allen.curtis@curtisembedded.com}
Subject: packagegroup not appearing in HOB
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
X-List-Received-Date: Wed, 07 Oct 2015 17:43:37 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

I created a packagegroup file as per the instructions called =
packagegroup-foo.bb

Within that file I define 2 package groups as such.

PACKAGES =3D "\
 packagegroup-foo-apps \
 packagegroup-foo-tools \
"

RDEPENDS_packagegroup-foo-apps =3D "=85"

RDEPENDS_packagegroup-foo-tools =3D "=85"

However, when I run HOB and inspect the list of packages it shows =
packagegroup-foo but it does not list packagegroup-foo-apps or =
packagegroup-foo-tools.

Is this correct?

How do I verify the groups are created correctly so I can complete =
implementation using the new group definitions?

TIA


