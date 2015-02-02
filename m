Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DA12E0086F; Mon,  2 Feb 2015 07:17:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-mn.atk.com (mx-mn.atk.com [192.107.248.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D7C0E00809
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 07:17:39 -0800 (PST)
Received: from unknown (HELO UT40SVCWEC0001.atk.com) ([146.168.70.142])
	by mx-mn.atk.com with ESMTP; 02 Feb 2015 09:09:01 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.192]) by
	UT40SVCWEC0001.atk.com ([146.168.70.142]) with mapi id 14.03.0174.001;
	Mon, 2 Feb 2015 08:17:36 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: COMPATIBLE_HOST
Thread-Index: AdA++upFfaCsBP/ZQvyvk/0qfkk8Lw==
Date: Mon, 2 Feb 2015 15:17:35 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E74429D@UT40SVCWEM001.atk.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.32.35]
MIME-Version: 1.0
Subject: COMPATIBLE_HOST
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
X-List-Received-Date: Mon, 02 Feb 2015 15:17:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have a binary recipe that is only compatible with x86 and x86_64 systems.=
 I *think* specifying the COMPATIBLE_HOST in my recipe would be a good idea=
. However, I've been unable to find any documentation, or even a good descr=
iption, of this variable. Can someone help me out here?

Thanks,

Thomas


