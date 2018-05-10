Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F374E00B8E; Thu, 10 May 2018 13:35:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd01217.aruba.it (smtpcmd01217.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7419E00831
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 13:35:02 -0700 (PDT)
Received: from [192.168.24.148] ([87.26.78.158])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id kkaz1x00Q3QvvBK01kb09A; Thu, 10 May 2018 22:35:01 +0200
From: Mauro Ziliani <mauro@faresoftware.it>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <0de2a57e-c10e-ed0d-d893-c73700f4ba56@faresoftware.it>
Date: Thu, 10 May 2018 22:34:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1525984501; bh=BPU5wwwFt3Q1aiz4VbsOEqAnb5+hJnFy5hyBlmwZV4k=;
	h=From:Subject:To:Date:MIME-Version:Content-Type;
	b=HR6ZrLN4+c63RvWM8tfxqX4qgNpjwSenynn9rvqsF7mBRzxOjrwyu0T/1Vtsobu2Z
	+CEGgbBZ19Z0VvL6uOVlMP49MRomJNDY1wEqwlELdMA3wIrMkf+O5LpYqw6kk0ag53
	bdh4LFfJDFP2fiElipVJcJkZHX2IXALPGJjwXDYNyVYrwSuoTier0VJrjRykB7Hu+5
	fAxIMrjWepNi9nE5EG3E40irVARiiHvySox58aXjocJVHrFYWdxaSbqREKCq3UkAgI
	rJAEs3tUAQOjBYgLyrZzKuiEKsRhMD3S7/RtF5VDJN8Mr2t0LsA9U1aOVmlH4mqq4p
	IKaIC8QZVVeSg==
Subject: FILES autofilling
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
X-List-Received-Date: Thu, 10 May 2018 20:35:05 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

My name's Mauro.

I developed an application with CMake outside Yocto Krogoth.

In CMakeLists.txt I have a lot of install(...) commands.

I produce the final deb package with cpack -G DEB command and al works fine.

Now I'd like to import my app into Krogoth.

I edited correctly the recipe, but the do_package task fails because I 
have not filled the FILES variable correctly.

I have 656 files to ship with the application.

The application must be installed in its own folder /home/app


Any idea how can I list all files to ship inside FILES variable?


Best regards,

    MZ


