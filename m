Return-Path: <juan.casafranca@kdab.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 859CFE00BBC; Sat,  1 Jul 2017 04:16:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_40,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [176.9.126.58 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3019]
X-Greylist: delayed 362 seconds by postgrey-1.32 at yocto-www;
	Sat, 01 Jul 2017 04:16:18 PDT
Received: from mail.kdab.com (mail.kdab.com [176.9.126.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4FE8E00BB3
	for <yocto@yoctoproject.org>; Sat,  1 Jul 2017 04:16:18 -0700 (PDT)
X-Virus-Scanned: amavisd-new at kdab.com
Sender: juan.casafranca@yoctoproject.org
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Juan_Jos=c3=a9_Casafranca?= <juan.casafranca@kdab.com>
Message-ID: <8fd08db1-eebb-f7ce-b258-cafa45891113@kdab.com>
Date: Sat, 1 Jul 2017 13:10:34 +0200
MIME-Version: 1.0
Subject: Raspberrypi3 with Kodi (as an exercise)
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
X-List-Received-Date: Sat, 01 Jul 2017 11:16:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi everybody,

I'm completely new to the Yocto project, just started playing with it 
and my rpi3 two days ago.

As an exercise to learn how Yocto works, I'm trying to build a rpi image 
which can launch kodi.

Right now I'm able of building an image which contains kodi,but when I 
try to launch it, it fails. It says that it cannot create the GUI. (I 
have tried kodi, kodi --standalone and kodi-standadlone, same result)

In order to build the image, I had to add

MACHINE_FEATURES += "vc4graphics" so it gets mesa as egl, gl and opengl 
provider.

If I dont add that feature, kodi complains about not finding egl during 
configuration. I dont understand why it complains, since userland (the 
default) its a egl provider (as it says in the recipe at least, probably 
I am understanding something incorrectly).

Could you please guide me a little bit with this? As I said, it's my 
first time playing with embedded devices and with yocto, so some 
explanations would be nice :-)


Thanks!


