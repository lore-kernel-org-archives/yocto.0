Return-Path: <clay@montgomery1.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97AC9E00BF8; Sun, 13 Dec 2015 10:42:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [67.222.39.168 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0003]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 397 seconds by postgrey-1.32 at yocto-www;
	Sun, 13 Dec 2015 10:42:37 PST
Received: from gproxy6-pub.mail.unifiedlayer.com
	(gproxy6-pub.mail.unifiedlayer.com [67.222.39.168])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 59434E0083E
	for <yocto@yoctoproject.org>; Sun, 13 Dec 2015 10:42:37 -0800 (PST)
Received: (qmail 29902 invoked by uid 0); 13 Dec 2015 18:35:57 -0000
Received: from unknown (HELO CMOut01) (10.0.90.82)
	by gproxy6.mail.unifiedlayer.com with SMTP; 13 Dec 2015 18:35:57 -0000
Received: from box858.bluehost.com ([69.195.124.58]) by CMOut01 with 
	id t6bp1r00R1Fiqph016bsqm; Sun, 13 Dec 2015 11:35:56 -0700
X-Authority-Analysis: v=2.1 cv=Zc6OaKlA c=1 sm=1 tr=0
	a=6215HlyIVfFolxfkGyTlSg==:117 a=6215HlyIVfFolxfkGyTlSg==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=cwQF-0P1AAAA:8 a=DpUQn3bY8hUA:10 a=F7vrFIpsXqIA:10
	a=wUQvQvOEmiQA:10 a=r77TgQKjGQsHNAKrUKIA:9 a=iGHA9ds3AAAA:8
	a=ffI_LVzEVBz-ndyt_2UA:9 a=QEXdDO2ut3YA:10 a=jw5W9DThyD3hlyB428YA:9
	a=9Y1HMSudE_3ghiGb:21 a=_W_S_7VecoQA:10
Received: from [70.119.214.20] (port=49369 helo=[192.168.0.18])
	by box858.bluehost.com with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.84) (envelope-from <clay@montgomery1.com>)
	id 1a8BUs-0006dG-NA
	for yocto@yoctoproject.org; Sun, 13 Dec 2015 11:35:50 -0700
To: yocto@yoctoproject.org
From: "Clay D. Montgomery" <clay@montgomery1.com>
Message-ID: <566DBA83.8010506@montgomery1.com>
Date: Sun, 13 Dec 2015 12:35:47 -0600
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
X-Identified-User: {1231:box858.bluehost.com:montgor0:montgomery1.com}
	{sentby:smtp auth 70.119.214.20 authed with
	clay@montgomery1.com}
Subject: Which OpenSSH packages to use?
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
X-List-Received-Date: Sun, 13 Dec 2015 18:42:40 -0000
Content-Type: multipart/alternative;
	boundary="------------050503040702010909080908"

--------------050503040702010909080908
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to understand which of these OpenSSH package options I should 
use with the CORE_IMAGE_EXTRA_INSTALL option:

     openssh
     openssh-sshd
     openssh-sftp
     openssh-sftp-server

I want OpenSSH server functionality that supports both the scp and sftp 
protocols. I first tried just 'openssh' and found that it provides scp 
but not sftp.
So then I tried the latter 3 options and I got sftp, but not scp. Do I 
really need all 4 of these to get scp and sftp?

I checked this recipe guide and found it lists yet another package named 
'packagegroup-core-ssh-openssh 
<http://recipes.yoctoproject.org/rrs/recipedetail/122/>' but it says 
nothing about sftp.
     http://recipes.yoctoproject.org/rrs/recipes/2.1/M2/

I would appreciate some advise.

Thanks, Clay Montgomery



--------------050503040702010909080908
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    I'm trying to understand which of these OpenSSH package options I
    should use with the CORE_IMAGE_EXTRA_INSTALL option:<br>
    <br>
        openssh<br>
        openssh-sshd<br>
        openssh-sftp<br>
        openssh-sftp-server<br>
    <br>
    I want OpenSSH server functionality that supports both the scp and
    sftp protocols. I first tried just 'openssh' and found that it
    provides scp but not sftp.<br>
    So then I tried the latter 3 options and I got sftp, but not scp. Do
    I really need all 4 of these to get scp and sftp?<br>
    <br>
    I checked this recipe guide and found it lists yet another package
    named '<a
      href="http://recipes.yoctoproject.org/rrs/recipedetail/122/">packagegroup-core-ssh-openssh</a>'
    but it says nothing about sftp.<br>
        <a class="moz-txt-link-freetext" href="http://recipes.yoctoproject.org/rrs/recipes/2.1/M2/">http://recipes.yoctoproject.org/rrs/recipes/2.1/M2/</a><br>
    <br>
    I would appreciate some advise.<br>
    <br>
    Thanks, Clay Montgomery<br>
    <br>
    <br>
  </body>
</html>

--------------050503040702010909080908--
