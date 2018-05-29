Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F92BE00B57; Tue, 29 May 2018 05:50:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1253 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 May 2018 05:50:19 PDT
Received: from mxout014.mail.hostpoint.ch (mxout014.mail.hostpoint.ch
	[217.26.49.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2FEEE009AC
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 05:50:19 -0700 (PDT)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout014.mail.hostpoint.ch with esmtp (Exim 4.91 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1fNdkj-000F2a-Bq; Tue, 29 May 2018 14:29:25 +0200
Received: from 212-51-139-112.fiber7.init7.net ([212.51.139.112]
	helo=[192.168.88.140])
	by asmtp012.mail.hostpoint.ch with esmtpa (Exim 4.91 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1fNdkj-000ONi-9a; Tue, 29 May 2018 14:29:25 +0200
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <0f9f30fc-f200-c7f6-8a02-9e1afd58252a@smart-home-technology.ch>
Date: Tue, 29 May 2018 14:29:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
Cc: Andrii Voloshyn <andrii.voloshyn@qiio.com>
Subject: Problem with python ssl binding
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
X-List-Received-Date: Tue, 29 May 2018 12:50:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: de-DE

Hello,

I'm trying to run IoT edge on our target. But as I'm to starting it, 
python yells at me with an undefined symbol error:

iotedgectl setup --connection-string 
"HostName=test-sht-provisioning.azure-devices.net;DeviceId=concentrator2edge;SharedAccessKey=rc+orZCzMhHkQmgPZ//ORMh2fALweUKWhGropd2aXcg=" 
--nopas
Traceback (most recent call last):
   File "/usr/bin/iotedgectl", line 7, in <module>
     from edgectl import coremain
   File "/usr/lib/python2.7/site-packages/edgectl/__init__.py", line 12, 
in <module>
     from edgectl.cli import EdgeCLI
   File "/usr/lib/python2.7/site-packages/edgectl/cli/__init__.py", line 
1, in <module>
     from edgectl.cli.edgecli import EdgeCLI
   File "/usr/lib/python2.7/site-packages/edgectl/cli/edgecli.py", line 
7, in <module>
     from edgectl.config import EdgeConfigInputSources
   File "/usr/lib/python2.7/site-packages/edgectl/config/__init__.py", 
line 10, in <module>
     from edgectl.config.edgeconfig import EdgeHostConfig
   File "/usr/lib/python2.7/site-packages/edgectl/config/edgeconfig.py", 
line 11, in <module>
     from edgectl.config.certconfig import EdgeCertConfig
   File "/usr/lib/python2.7/site-packages/edgectl/config/certconfig.py", 
line 9, in <module>
     from edgectl.utils import EdgeUtils
   File "/usr/lib/python2.7/site-packages/edgectl/utils/__init__.py", 
line 1, in <module>
     from edgectl.utils.certutil import EdgeCertUtil
   File "/usr/lib/python2.7/site-packages/edgectl/utils/certutil.py", 
line 6, in <module>
     from OpenSSL import crypto
   File "/usr/lib/python2.7/site-packages/OpenSSL/__init__.py", line 8, 
in <module>
     from OpenSSL import crypto, SSL
   File "/usr/lib/python2.7/site-packages/OpenSSL/crypto.py", line 16, 
in <module>
     from OpenSSL._util import (
   File "/usr/lib/python2.7/site-packages/OpenSSL/_util.py", line 6, in 
<module>
     from cryptography.hazmat.bindings.openssl.binding import Binding
   File 
"/usr/lib/python2.7/site-packages/cryptography/hazmat/bindings/openssl/binding.py", 
line 13, in <module>
     from cryptography.hazmat.bindings._openssl import ffi, lib
ImportError: 
/usr/lib/python2.7/site-packages/cryptography/hazmat/bindings/_openssl.so: 
undefined symbol: pthread_atfork

I can't really find much information about how to fix this error, 
especially since the pthread_atfork function should always be there in 
pthreads.

Does anyone know how to fix this?

Thanks and All the Best,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


