Return-Path: <sebastientaylor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4E88E0073A; Fri,  9 May 2014 11:57:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1442 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 May 2014 11:57:41 PDT
Received: from mail-pa0-f47.google.com (unknown [209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C6AE00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 11:57:41 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id lf10so2219835pab.34
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 11:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:content-type:content-transfer-encoding:subject
	:message-id:date:to:mime-version;
	bh=Gq/en5bJmM03BTqCxeGHLLnrJU0KLWR2DDAK3frB1Ac=;
	b=QeN0B0VJx4Ls67ucMqBukkzMsimWc2jO9sRK40Ws7aadwiZbfiCveoEmQvAegrRhPG
	s3Y7O4TbkcIqZaK2s7mzPyce3diKp8FDBT5vgwFTY1NncIrrtzvJ/LtgnqCnsH7L6/JN
	TBkQxF0rz2OQIFE/ndWcl8HoIdgHlgtAPl0W4pjHYUhD/N2n5Hqglqw0djv53miL7dJh
	jbKJTYQJyBKUznIXQSC3wxRrsi8xMXyM6eU4PHCbYNwvpXWYB8FqvvXv23k/tIrfr33T
	6/M+XKiKfyc0Oh3tLAmQo3AYZPxr5fTaWkmSzb6tmafhxo5kOSE+DWhg0vGV2ObL4hoD
	xG/g==
X-Received: by 10.66.147.99 with SMTP id tj3mr23186901pab.47.1399660015512;
	Fri, 09 May 2014 11:26:55 -0700 (PDT)
Received: from [192.168.1.12] (mail.au-zone.com. [184.70.109.50])
	by mx.google.com with ESMTPSA id
	ko10sm8784089pbd.52.2014.05.09.11.26.54 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 09 May 2014 11:26:54 -0700 (PDT)
Sender: =?UTF-8?Q?S=C3=A9bastien_Taylor?= <sebastientaylor@gmail.com>
From: =?iso-8859-1?Q?S=E9bastien_Taylor?= <me@staylor.ca>
Message-Id: <68F4E435-B3B6-4E88-A17E-76391406923B@staylor.ca>
Date: Fri, 9 May 2014 12:26:54 -0600
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
X-Mailer: Apple Mail (2.1874)
Subject: Eclipse CMake Errors
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
X-List-Received-Date: Fri, 09 May 2014 18:57:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

When using an Eclipse Yocto CMake project, errors in cmake are simply =
reported as a generic error.  Is there an existing method of having the =
plugin display the detailed cmake stdout/stderr output instead?

Example error, 'Configuring project' has encountered a problem.  Build =
of project failed 1.



