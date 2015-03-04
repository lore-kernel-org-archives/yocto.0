Return-Path: <hagigatali@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DBB4E00853; Wed,  4 Mar 2015 03:23:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,PLING_QUERY,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hagigatali[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA2A3E0076F
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 03:23:40 -0800 (PST)
Received: by qcxm20 with SMTP id m20so35664154qcx.0
	for <yocto@yoctoproject.org>; Wed, 04 Mar 2015 03:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VRhBXxBdPj4trRm6ibKaWEhBAIcgDKwMhfoSlJqgkfY=;
	b=zzuPm41vSTf886Y6NUE3DTHU5jB+B7cztyecTEPaTzFZ4XEw74ekognD6+8i4MNx0f
	/BeSv/quxXVbTml3dJOdjwhKD208nAETWeRCWQ+8lID1KK0giSTbFj9jxE8qCHLu2PgM
	pcrnqmk7MjDYPN/plC44l68lNsKDFfafm0+sGFqR3LqXsuRr8sdgUaWjsugSwUqVwJrz
	I/uUd9JTmaY1vMZox0UdUcn/HH8HHz/8hOeARZDEwfy8uUwmFY1UovBF4S0pWE5AC/QG
	aReIzeuopk+j9JJzsBJvkAoTE1A0v8QDEC7W2/AvJA3lJHlFqiyVc5hCRQZQUbZQJb9p
	IHJw==
MIME-Version: 1.0
X-Received: by 10.55.25.26 with SMTP id k26mr6294188qkh.10.1425468219554; Wed,
	04 Mar 2015 03:23:39 -0800 (PST)
Received: by 10.96.102.229 with HTTP; Wed, 4 Mar 2015 03:23:39 -0800 (PST)
Date: Wed, 4 Mar 2015 14:53:39 +0330
Message-ID: <CAKKWdteAQVqUk+BKysO184M6PQnjfXiB7Vg+9zLtR6mT=2gVXA@mail.gmail.com>
From: ali hagigat <hagigatali@gmail.com>
To: yocto@yoctoproject.org
Subject: why yocto downloads files so hard?!!
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
X-List-Received-Date: Wed, 04 Mar 2015 11:23:44 -0000
Content-Type: text/plain; charset=UTF-8

The download rate of my Internet connection is about 100KB/s and
sometimes up to 300kB/s.
When Yocto struggles to download the Linux kernel it first starts with
many packets but after half an hour it becomes so slow and it gives up
and downloading even a simple Linux kernel fails with
errors(do_fetch() functions fails)
My questions is that an operating system can download a Linux kernel ,
for example a tar.gz or bz2 version, after about 10 minutes but Yocto
sticks to a git server and starts exchanging packets which never ends.
Why git server?!! Download the Linux kernel by its compressed tar.bz2
or tar.gz files, why git? so slow it will be
Even Yocto does not show how much percent of that file has become
downloaded!! a big weakpoint.....
A chain of downloads and bitbake program does not give any information
of its present do_fetch(), how much of that file has become downloaded
and how much is left. A never end sequence of the computer packets to
that damn git server!!

