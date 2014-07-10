Return-Path: <jopado1@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73DF1E006F3; Thu, 10 Jul 2014 13:04:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jopado1[at]yahoo.com)
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (joe dougherty <jopado1[at]yahoo.com> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0003]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.148 listed in list.dnswl.org]
Received: from nm18-vm3.bullet.mail.ne1.yahoo.com
	(nm18-vm3.bullet.mail.ne1.yahoo.com [98.138.91.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18A4AE0059F
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 13:04:00 -0700 (PDT)
Received: from [98.138.100.113] by nm18.bullet.mail.ne1.yahoo.com with NNFMP;
	10 Jul 2014 20:03:59 -0000
Received: from [98.139.212.200] by tm104.bullet.mail.ne1.yahoo.com with NNFMP;
	10 Jul 2014 20:03:59 -0000
Received: from [127.0.0.1] by omp1009.mail.bf1.yahoo.com with NNFMP;
	10 Jul 2014 20:03:59 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 480464.12078.bm@omp1009.mail.bf1.yahoo.com
Received: (qmail 81592 invoked by uid 60001); 10 Jul 2014 20:03:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1405022639; bh=yOrIqDvmFbPXfEFHGek7Ao96v31QJh1mRcUvZCgZKOo=;
	h=Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=Uj7wDSTPMh0buP8QM9UtlrY19glVDFnr+iFJ8j9U//HrIaB12v9C+v9Rzg6KUYBz4DCNueXo7ieRX7LucLbp8t1NG4QvTocbxneIkPwvmU05Wrubzq8twIeT5HyfPfTO1GXA2nc7kriE2+ZlL9ztMYoYbx9yWQq7kpr5rJqNnbY=
X-YMail-OSG: zIeHYVcVM1miFRrjOQFnWpeiGZmzTGKKjtvDYY4dX1tAKYD
	mTHKyZv9CWRjKaexrrRvGG_bDH8fElmv4iAxuf2v34wm9VDFKRK6LFJT4B4Y
	HUzStSa8nn4u68FMRFIMgjVd4RUUumYfxGcwo3u85Pa1n7MeKHc2f0c2BGe8
	Ga_UdbtAosq46E9l.yw211ON7AaESpyLitp4lXkVCvj.DtVnWpcAznd6e.v1
	KR5UZpf.mK3RRio7vkru8b.HYlwpHyQ2IdWKQ39jSQQwb_FbPnjw7e_zGtiz
	lVOGf8aKHVla7FvIMJCs.nUjZJ4xBahH3ii.PE_mzN994lHaFQsv3vQ5zoHw
	nI0xcLmvqBn1O43udhUAGDinhxGlJcpX.JqZ18A6iQ8iQzXgF3UUIVPej8vP
	VPKBblIwqTKGMjRLz9_WJJW3Q7RWIAiM7rrtLnSPjzDvFtb0xpKiEYX91Pe5
	wpbzCAWTlm0Dilj7Z1XtwueiCwL1vCJiJ2o9fCOKjFGh3Gpoe0QhBL_Dg5VW
	eAPnHSxvUvyPQCkORVfqrvnfjdZiSqkM7VYJj0bugxm3bEg--
Received: from [184.185.173.186] by web140605.mail.bf1.yahoo.com via HTTP;
	Thu, 10 Jul 2014 13:03:59 PDT
X-Rocket-MIMEInfo: 002.001,
	SSBhbSB1c2luZyBtZXRhLWZzbC1hcm0gb24gYSBmcmVlc2NhbGUgdnlicmlkIHBsYXRmb3JtIGFuZCBhbSB0cnlpbmcgdG8gY3JlYXRlIGVuY3J5cHRlZCBmaWxlc3lzdGVtIHBhcnRpdGlvbiBhdCBydW50aW1lLiBJJ20gdXNpbmcgY3J5cHRzZXR1cCAoTFVLUykgb24gYSBqZmZzMiBwYXJ0aXRpb24uIEkgY2FuIGZvcm1hdCBhbmQgb3BlbiB0aGUgTFVLUyBjb250YWluZXIgYW5kIHNlZSB0aGUgZW50cnkgaW4gL2Rldi9tYXBwZXIuIEkgc3VjY2Vzc2Z1bGx5IGNyZWF0ZSB0aGUgZmlsZXN5c3RlbSB2aWEgbWsBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.194.680
Message-ID: <1405022639.95244.YahooMailNeo@web140605.mail.bf1.yahoo.com>
Date: Thu, 10 Jul 2014 13:03:59 -0700
From: Joe Dougherty <jopado1@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: cryptsetup on Freescale's Vybrid
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Joe Dougherty <jopado1@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Jul 2014 20:04:04 -0000
Content-Type: multipart/alternative;
	boundary="1254654340-1211869838-1405022639=:95244"

--1254654340-1211869838-1405022639=:95244
Content-Type: text/plain; charset=us-ascii

I am using meta-fsl-arm on a freescale vybrid platform and am trying to create encrypted filesystem partition at runtime. I'm using cryptsetup (LUKS) on a jffs2 partition. I can format and open the LUKS container and see the entry in /dev/mapper. I successfully create the filesystem via mkfs.jffs2. However I can not mount the filesystem - mount fails with error "invalid argument". Does anyone know if this is supported or if there are known issues with this. I can provide detailed command output from the target if needed. Thank you, Joe

--1254654340-1211869838-1405022639=:95244
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:10pt"><div style="" class="">I am using meta-fsl-arm on a freescale vybrid platform and am trying to create encrypted filesystem partition at runtime. I'm using cryptsetup (LUKS) on a jffs2 partition. I can format and open the LUKS container and see the entry in /dev/mapper. I successfully create the filesystem via mkfs.jffs2. However I can not mount the filesystem - mount fails with error "invalid argument". Does anyone know if this is supported or if there are known issues with this. I can provide detailed command output from the target if needed. Thank you, Joe<br style=""></div><div style="" class=""><br style="" class=""></div></div></body></html>

--1254654340-1211869838-1405022639=:95244--
