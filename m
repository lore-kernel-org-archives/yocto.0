Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF6A0E00DC2; Thu, 14 Dec 2017 21:32:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EF1FE00D92
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 21:32:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vBF5VwFg014978
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Dec 2017 21:31:58 -0800 (PST)
Received: from [128.224.162.178] (128.224.162.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Thu, 14 Dec 2017 21:31:57 -0800
To: Sherif Omran <sherifomran2000@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <CAPb0b+OoUvTRRAO-ViEkEt=qnERAyZ9X+mnQxkExH22eCuvGVw@mail.gmail.com>
From: Dengke Du <dengke.du@windriver.com>
Message-ID: <e944b29f-9264-89a4-aae8-a47d8d4a7e9e@windriver.com>
Date: Fri, 15 Dec 2017 13:30:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAPb0b+OoUvTRRAO-ViEkEt=qnERAyZ9X+mnQxkExH22eCuvGVw@mail.gmail.com>
X-Originating-IP: [128.224.162.178]
Subject: Re: Bluetooth
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
X-List-Received-Date: Fri, 15 Dec 2017 05:32:02 -0000
Content-Type: multipart/alternative;
	boundary="------------7CF557182C64263725CC407A"
Content-Language: en-US

--------------7CF557182C64263725CC407A
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

You should attach the bluez stack with the raspberry firmware bcm43xx:

     hciattact -n /dev/ttyAMA0 bcm43xx 921600 noflow -

or if you use systemd:

     systemctl restart brcm43438.service

Now you can see the the device:

     rfkill list all

Enable it:

     rfkill unblock all

     hciconfig hci0 up

Checking the bluetooth:

     hciconfig -a


On 2017年12月15日 12:43, Sherif Omran wrote:
> hello
>
> i ve been strugggeling since couple of days with raspberry pi 0 board 
> and can not figure out how to enable the chip, whether it is enabled 
> by default or it needs some intervention. I generated the 
> rpi-basic-image and tested with the hiconfigure -a but the chip is not 
> detected.
>
> Any body had similar issue and got it to solve?
>
>


--------------7CF557182C64263725CC407A
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>You should attach the bluez stack with the raspberry firmware
      bcm43xx:</p>
    <p>    hciattact -n /dev/ttyAMA0 bcm43xx 921600 noflow -</p>
    <p>or if you use systemd:</p>
    <p>    systemctl restart brcm43438.service</p>
    <p>Now you can see the the device:</p>
    <p>    rfkill list all</p>
    <p>Enable it:</p>
    <p>    rfkill unblock all</p>
    <p>    hciconfig hci0 up</p>
    <p>Checking the bluetooth:</p>
    <p>    hciconfig -a<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 2017年12月15日 12:43, Sherif Omran
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAPb0b+OoUvTRRAO-ViEkEt=qnERAyZ9X+mnQxkExH22eCuvGVw@mail.gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div>
          <div>hello<br>
            <br>
          </div>
          i ve been strugggeling since couple of days with raspberry pi
          0 board and can not figure out how to enable the chip, whether
          it is enabled by default or it needs some intervention. I
          generated the rpi-basic-image and tested with the hiconfigure
          -a but the chip is not detected.<br>
          <br>
        </div>
        Any body had similar issue and got it to solve?<br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------7CF557182C64263725CC407A--
