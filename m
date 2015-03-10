Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1EF4E00777; Mon,  9 Mar 2015 21:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ACBFE00754
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 21:45:05 -0700 (PDT)
Received: by igbhn18 with SMTP id hn18so27705851igb.2
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 21:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=0hZZyEtrWrS3eb2/VPcrVRymTEwhujrqWXVNtAkPYBU=;
	b=piKEc9sdvsBZ/X3B/sNVo67rrozk5AHCCAzS//tFzDjEIElFDEquo14hywm3k06KWF
	qz3VOJJ13TZ1wG/JLb9Xq0yqMe4FC1g8oDmFbZLiM68Ix7iMDnrVv+b1s1XQubCNsciz
	S8CKJOSRYeifJmimxIlXYQhu5pDJYlUyTZlQe21b01srWCSik16g97VLtHzyBG7X0F/k
	AEzaGJAGoF+X9eQ73st/80coRFDKersposdIOGq1tcCdFps2O8/5Zzs9JtAOZzxqINHo
	CiXZHgIoIUuNToGy/f0jhXReI6h/+Jj1jGq3ZsBAjmx82775uqtBRlj+fkVATkVcu+30
	YoUw==
MIME-Version: 1.0
X-Received: by 10.50.142.99 with SMTP id rv3mr49077250igb.11.1425962704644;
	Mon, 09 Mar 2015 21:45:04 -0700 (PDT)
Received: by 10.64.39.16 with HTTP; Mon, 9 Mar 2015 21:45:04 -0700 (PDT)
Date: Tue, 10 Mar 2015 12:45:04 +0800
Message-ID: <CACjDgAN4pFt7Q-gm6dt-AMTryio_dsA8m_ARbssdc6QNktK8yQ@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Intel BSP for Rangeley
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
X-List-Received-Date: Tue, 10 Mar 2015 04:45:08 -0000
Content-Type: text/plain; charset=UTF-8

Dear all,

May I know which BSP to use for Intel Atom C2000 Rangeley?  I do not
see that Intel BSP has the mohon peak bsp.  I am trying out the Dizzy
1.7 branch.  Thanks.

Regards,
Albert.

