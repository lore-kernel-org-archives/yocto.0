Return-Path: <fdprnd@dave.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66976E00994; Fri,  6 Apr 2018 06:16:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 562 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Apr 2018 06:16:54 PDT
Received: from mx.dave-tech.it (mx.dave-tech.it [185.100.109.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41D17E005A9
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 06:16:54 -0700 (PDT)
Received: from [127.0.0.1] (unknown [192.168.0.115])
	by mx.dave-tech.it (Postfix) with ESMTPS id 22E7B98
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 15:07:31 +0200 (CEST)
To: yocto@yoctoproject.org
From: Francesco <fdprnd@dave.eu>
Message-ID: <f51c171f-b4a2-ff20-a3a0-66ae74647c23@dave.eu>
Date: Fri, 6 Apr 2018 15:07:30 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
Subject: adding avocado to custom image
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
X-List-Received-Date: Fri, 06 Apr 2018 13:16:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB

Hello everyone,

I'm trying to install a python package and its additional plugins to my 
custom image. These plugins are stored in a directory within the 
package's folder named optional_plugins. Plugins can easily be installed 
using the command python setup.py install from within the plugin folder.

I successfully installed the main package using a custom recipe and 
luckily it works fine on the built image. Unfortunately, none of the 
optional_plugins I tried to install, are instead available on the image.

My question is, how am I supposed to install these plugins from my 
recipe considering that they need to be installed running python 
setup.py install?

I am quite new to yocto, any suggestion is appreciated.

Thanks.

Frank.




