Return-Path: <sir.dje@btinternet.com>
Received: from nm1.bt.bullet.mail.ird.yahoo.com
	(nm1.bt.bullet.mail.ird.yahoo.com [212.82.108.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6782E013CE
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 13:47:45 -0800 (PST)
Received: from [212.82.108.228] by nm1.bt.bullet.mail.ird.yahoo.com with NNFMP;
	02 Jan 2013 21:47:43 -0000
Received: from [217.146.183.121] by tm1.bt.bullet.mail.ird.yahoo.com with
	NNFMP; 02 Jan 2013 21:47:43 -0000
Received: from [127.0.0.1] by smtp826.mail.ukl.yahoo.com with NNFMP;
	02 Jan 2013 21:47:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=btinternet.com; s=s1024;
	t=1357163263; bh=eQugTZ5XSmcLdvZ2DAp25N4SAy50YMdLOZ6wZzPw9pU=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=4VL5eysjakRHyS7Iz1FlZfOurjlzMcRCjtX3KlN/aPRtwKfkhakjYF5USpEYV7vJu5OiiO8u/JuobQZ3zZL8yHdU1L/GSkQBPiUtRgCrllEnAzcnz7s2ASRl65CAbkFPknTzl+2KmloO5K+tW5u0Eq8Uh8bN3XPbshQVwp4LUaU=
X-Yahoo-Newman-Id: 766848.77805.bm@smtp826.mail.ukl.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: bkQWT8YVM1lE9QNQgCR77Yog5wIoJ0LOZADEpCLXY_hFBsj
	4UeefhbrRYEck3dOCMtw4tJ4yPIb51kVopCkPzG.iL0cx7ml38ROCCXRTDfJ
	va0gS_ida_huBO8IZNkxGBFN1cm0cBxf8fMwF.9a6HRVTf57HJ_Ri8ApvzXV
	37rlFF_4JaKbHayuwCeystmyxTeLRNhv3WQiBboXG6NgnAzcBAubWFmb7cIF
	297WxosdBMWyAzoQ64mlTz3LJob5H79FNahKUheJ0mY_68TBP3Uh0zVqkURx
	g5S9Xme.Vq3gZ3G6d.jZGEyCcAGJ3_yy8QMXmdmFCpFlWzp27LpETCc4.r7M
	.uM053xcVC1385oassX9w.aaeDu1.iOMKo4TJuMRk1bhhzxe.sJpNc5C_TeX
	1O4tbrOtetvuHJvLNDaE4RI1PiVlh5nrCOwDz_bKkjI8Y_40csKqLYarsymL
	5BUgMxFZSXKHspWYkUdXqjtn55plj7daASbU.LX0KT.gGbZUMaImRmtxffPI
	fGquQoZR_wG30PQGqAtNkvO_32BOW5vqWDxO49EawyQaI6YVmKIjLOaHrk.u
	fsuqrUvNF9FnoghAlUFZLnMO.E0pZLRsOWmdR9klRjaUM941z3R6mAf.u2Oy
	OnRTl4Wq6F.qTcyn4lu3zpqEyg_rVZ96oIaFi06bCqJGnsuHRKu3u8y1iArg
	Yw4fLyI1aDLXzkqOclTqtz4xz.jltvqAfMh2A8usCN0C6XI3_xsWjgBlkp6H
	h.LWKamqs7cdgJ3Ei9mgI0QjRNoTDVHx7rZ9LetaBPWpKifRu6a2PJ.tFnKw
	nRJgrj1.2xwA_i49Xiu58UPPqdh0w2hHxMpWe9ALkYF2C5fwTEj7fBSxRErG
	LQfe2aeRatnwDA9fMwn.IIz7NrvK14Mf9RKv_CwtwJBI.9LU7gKIgyKVgCdr
	0XuijkRFSQDiBVP3M4qDrM7KKUhxhPfBESU6Y1.n1NZCe93p2hXFmEXueoye pa2QY
X-Yahoo-SMTP: b1.mayOswBDlNn6fqROtDysXkh0suQhWU0CUAmkSytgyBLA-
Received: from [192.168.1.76] (sir.dje@86.143.191.84 with plain)
	by smtp826.mail.ukl.yahoo.com with SMTP; 02 Jan 2013 13:47:43 -0800 PST
Message-ID: <50E4AAFE.4080905@btinternet.com>
Date: Wed, 02 Jan 2013 21:47:42 +0000
From: David Evans <sir.dje@btinternet.com>
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Basic failures building 1st Yocto Project and Yocto Raspberry Pi
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Jan 2013 21:47:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dear Sirs,

I apologise for asking this question to everyone, but I can't figure out 
who best to direct this question to.

When I build the standard Yocto Project in the Quick-Start guide I get 
the following Warnings.

WARNING: Failed to fetch URL 
http://www.apache.org/dist/subversion/subversion-1.7.6.tar.bz2, 
attempting MIRRORS if available
WARNING: Failed to fetch URL 
ftp://ftp.ossp.org/pkg/lib/uuid/uuid-1.6.2.tar.gz, attempting MIRRORS if 
available
WARNING: Failed to fetch URL 
http://downloads.sourceforge.net/project/libpng/libpng12/1.2.49/libpng-1.2.49.tar.bz2, 
attempting MIRRORS if available

As a complete Newbie to Yocto, having the Quick-Start fail like this is 
killing me, as I have no stable example upon which to build my under 
standing.

My ultimate goal is to run the Raspberry Pi project as outlined at 
http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7, but I am seeing 
the same do_fetch failures as those reported by Ed Nelson at 
https://lists.yoctoproject.org/pipermail/yocto/2013-January/013571.html.

Any help will be much appreciated.


Regards,

David



