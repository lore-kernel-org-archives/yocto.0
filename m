Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C34EEE00B8F; Sun, 25 Jun 2017 23:35:49 -0700 (PDT)
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
Received: from mxout014.mail.hostpoint.ch (mxout014.mail.hostpoint.ch
	[217.26.49.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 615CBE00B63
	for <yocto@yoctoproject.org>; Sun, 25 Jun 2017 23:35:45 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout014.mail.hostpoint.ch with esmtp (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dPNce-000KtN-9l
	for yocto@yoctoproject.org; Mon, 26 Jun 2017 08:35:44 +0200
Received: from [2a02:aa12:a200:870:e05d:5ba6:4806:18e6]
	by asmtp013.mail.hostpoint.ch with esmtpa (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dPNce-000Jvt-7T
	for yocto@yoctoproject.org; Mon, 26 Jun 2017 08:35:44 +0200
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: yocto@yoctoproject.org
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <44f0509d-42e0-35ed-529f-0edf52b7671c@smart-home-technology.ch>
Date: Mon, 26 Jun 2017 08:35:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: network problems when running simple MS IoT Hub sample C application
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
X-List-Received-Date: Mon, 26 Jun 2017 06:35:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hello,

I'm trying to  run the Mircosoft Azure IoT hub mqtt example 
(iothub_client_sample_amqp or simliar) of the C SDK on yocto 
(https://github.com/Azure/azure-iot-sdk-c).
On my Ubuntu host machine, everything compiles and works fine, the 
application connects to the azure server and sends messages.
In Yocto, I get errors after compiling the whole SDK with all examples, 
but the mqtt example is already there, so I assume it's correct. 
Furthermore, I could compile it using Intel's meta-iot-cloud layer and 
only taking the example application itself into my own layer.

Now the actual problem:
When I run the application on the Yocto system, it establishes a tcp 
connection to the azure server, but then "stops working", until the 
azure server sends the tcp fin ack, which the the application 
acknowlegdes. On TCP dump I can see that packets were dropped by the 
kernel.
The tcp problem seems to occur while the azure server is transmitting 
the certificate, if I interpret the tcpdump output correctly. But might 
be just coincidence. I checked the openssl libs requested by the 
application and they are the same on the Ubuntu host and on the Yocto 
embedded system.

The network is also the same as on the host machine.

I would be very happy for ideas about what went wrong here.

Best regards,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


