Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9FF2E00C12; Mon, 29 Oct 2018 14:25:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36D29E00BBF
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 14:25:08 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	w9TLOoiq000563
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 29 Oct 2018 21:24:51 GMT
Message-ID: <0cf57caa9628aaa0edca9a2d5380aa70558e3756.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yocto discussion list <yocto@yoctoproject.org>
Date: Mon, 29 Oct 2018 21:24:50 +0000
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.1 at dan
X-Virus-Status: Clean
Cc: otavio@ossystems.com.br, joshua.g.lock@intel.com,
	rebecca.swee.fun.chang@intel.com, aaron.chun.yew.chan@intel.com
Subject: QA notification for completed autobuilder build (yocto-2.6.rc1)
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
X-List-Received-Date: Mon, 29 Oct 2018 21:25:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A build flagged for QA (yocto-2.6.rc1) was completed on the autobuilder
and is available at:

    https://autobuilder.yocto.io/pub/releases/yocto-2.6.rc1

Build hash information: 
bitbake: 0cfc71d1a342b82781b0ba547421e41f6340902a
eclipse-poky-neon: 303e46a6848f1937d12541a7fd58e61aa1361225
eclipse-poky-oxygen: f1a20dc6a5a252a4ed4484b618d579cbbc7d146e
meta-gplv2: 379ea8dd144b06aeb459e9a82c792c84d8a5baf7
meta-intel: 847dcbb866bb48c3a051967dd0b46b452aa9d5c4
meta-mingw: 8ddd31f2dfe506e45f22a6dd67f997045a34804e
meta-qt3: 02f273cba6c25f5cf20cb66d8a417a83772c3179
meta-qt4: 8e791c40140460825956430ba86b6266fdec0a93
oecore: 1fd7d0f2fbf7e200844c675ddb77513a8d5d7327
poky: 84eecb017ef92ef36b4df730908828e54aeff85c

This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


