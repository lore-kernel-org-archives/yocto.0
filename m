Return-Path: <p_j_r_m@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9489E0086D; Fri, 13 Mar 2015 00:28:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (p_j_r_m[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [72.30.238.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm35-vm3.bullet.mail.bf1.yahoo.com
	(nm35-vm3.bullet.mail.bf1.yahoo.com [72.30.238.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1198DE00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 00:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1426231718; bh=p5zBU5EG8DRxNOFUfdu76VihwfPVVk44GnLRmuv7UaI=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=T8sX88hXml4AYzc2XW0+BlE6n7ooPZ5XQcVevbGP3WAgV0haNWR45rQ9Td4cT52I7ph9v+mc5xkXAn+QEOnn6kn4r7Fx8TDBsLhxoO8WvlcxXkaih4c9bmfcLNIocOHMRyCXmbubEMTAHUPiTXd4NBAY6zP5SCQ7SqlPc1sftS7lXenO9YV6wXCfQZwVnKkWswmdjex5dx4DdGIgRcWekb0mlvMcqROUTHRuX+B3v8cgcEkByr+MesmyMEp/uyr9xCXQeIM0fQCWNLnY2q5FyJOsA+IKYcuLyJpjf+++xTUD4m8u9DEUAdwVKK4YCMTdM5Fz6/rTcBOhqmsFrjB3yg==
Received: from [66.196.81.173] by nm35.bullet.mail.bf1.yahoo.com with NNFMP;
	13 Mar 2015 07:28:38 -0000
Received: from [98.139.212.192] by tm19.bullet.mail.bf1.yahoo.com with NNFMP;
	13 Mar 2015 07:28:38 -0000
Received: from [127.0.0.1] by omp1001.mail.bf1.yahoo.com with NNFMP;
	13 Mar 2015 07:28:38 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 646764.9068.bm@omp1001.mail.bf1.yahoo.com
X-YMail-OSG: u5x_2ikVM1lCUqEbjg1_680gzdQ2ze2D1.33dsKMkxQzoGR9YliP4_FlCCsBIcp
	6x8ZGnvlwOoIe1lfyKz761v5q2Y3yKlF2nfo_X.yU8svVmvWDfogtVz1kZsR.vnFHezKs33LxCeu
	oKRXfq7GYSNR0liGn_D8ECiK0krhhq3mcG_uPnJ4FlsxkVFoP22qQdSe_mXklilnJhLThMcYVnAH
	X4dhAzpXCoi5rVRyQDdHppR3ab1pQIS6Zr0lIgxuWfmUoSNb4Dbc2zf6nsDaK8tvvoXuXcJrESzy
	v6Fozk9qrXNF9jBQDspaHsag4KdyfHyIC3u64fQyneJGlpyB9VE8roceVNrSaJ3CDQQsu.0GntYq
	.OKqb5zAGAQoBQNWvkQyT33.5zzOlgDibHIjNjjfGKrFfEpF047_HKidwsDxN8VqsAfzJF2LowJB
	7.Yqri31hIDu9Tse66SA.CFZxedWxfy5a50QyRh6RrscANrydBB8u7U0VWg.oWNvtNY5h74kowg--
Received: by 217.12.8.244; Fri, 13 Mar 2015 07:28:37 +0000 
Date: Fri, 13 Mar 2015 07:28:37 +0000 (UTC)
From: p_j_r_m <p_j_r_m@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <595363600.2683179.1426231717269.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: File in append recipe not installed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: p_j_r_m <p_j_r_m@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Mar 2015 07:28:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Gary.
I think is not called because I have echo lines in do_install_append() and =
they don't appear when bitbake -v is used after the recipe is cleaned and r=
ebuilt.

This is my layer:

releases/meta-mylayer
=E2=94=9C=E2=94=80=E2=94=80 conf
=E2=94=82  =E2=94=94=E2=94=80=E2=94=80 layer.conf
=E2=94=9C=E2=94=80=E2=94=80 README

