Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A0D5E00DBA; Thu, 14 Dec 2017 22:02:22 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 699A9E00D99
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 22:02:20 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vBF62Je6015341
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Dec 2017 22:02:19 -0800 (PST)
Received: from [128.224.162.178] (128.224.162.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Thu, 14 Dec 2017 22:02:19 -0800
To: Sherif Omran <sherifomran2000@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <CAPb0b+OoUvTRRAO-ViEkEt=qnERAyZ9X+mnQxkExH22eCuvGVw@mail.gmail.com>
	<e944b29f-9264-89a4-aae8-a47d8d4a7e9e@windriver.com>
	<CAPb0b+OiKcY_EZk8L_B=qmJ=2QPzwTZu4XRRp6xw_cymdjaQqg@mail.gmail.com>
From: Dengke Du <dengke.du@windriver.com>
Message-ID: <42d8e64b-91e3-da84-de52-48d907bf1104@windriver.com>
Date: Fri, 15 Dec 2017 14:00:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAPb0b+OiKcY_EZk8L_B=qmJ=2QPzwTZu4XRRp6xw_cymdjaQqg@mail.gmail.com>
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
X-List-Received-Date: Fri, 15 Dec 2017 06:02:22 -0000
Content-Type: multipart/alternative;
	boundary="------------A55055C60CFA3E0B76BF20F5"
Content-Language: en-US

--------------A55055C60CFA3E0B76BF20F5
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit



On 2017年12月15日 13:55, Sherif Omran wrote:
> when i do hciattach, i get initialization timeout.

This is a bug for initialization timeout:

     https://github.com/agherzan/meta-raspberrypi/issues/148

Sometimes it works, sometimes it would not work. Still need research on it.

> could it be a branch related?

Not branch related.

> I am using the morty branch
> meta-yocto-bsp: morty
> meta-raspberrypi: morty
>
>
> On Fri, Dec 15, 2017 at 6:30 AM, Dengke Du <dengke.du@windriver.com 
> <mailto:dengke.du@windriver.com>> wrote:
>
>     You should attach the bluez stack with the raspberry firmware bcm43xx:
>
>         hciattact -n /dev/ttyAMA0 bcm43xx 921600 noflow -
>
>     or if you use systemd:
>
>         systemctl restart brcm43438.service
>
>     Now you can see the the device:
>
>         rfkill list all
>
>     Enable it:
>
>         rfkill unblock all
>
>         hciconfig hci0 up
>
>     Checking the bluetooth:
>
>         hciconfig -a
>
>
>     On 2017年12月15日 12:43, Sherif Omran wrote:
>>     hello
>>
>>     i ve been strugggeling since couple of days with raspberry pi 0
>>     board and can not figure out how to enable the chip, whether it
>>     is enabled by default or it needs some intervention. I generated
>>     the rpi-basic-image and tested with the hiconfigure -a but the
>>     chip is not detected.
>>
>>     Any body had similar issue and got it to solve?
>>
>>
>
>


--------------A55055C60CFA3E0B76BF20F5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 2017年12月15日 13:55, Sherif Omran
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAPb0b+OiKcY_EZk8L_B=qmJ=2QPzwTZu4XRRp6xw_cymdjaQqg@mail.gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div>
          <div>
            <div>when i do hciattach, i get initialization timeout.<br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    This is a bug for initialization timeout:<br>
    <br>
        <a class="moz-txt-link-freetext" href="https://github.com/agherzan/meta-raspberrypi/issues/148">https://github.com/agherzan/meta-raspberrypi/issues/148</a><br>
    <br>
    Sometimes it works, sometimes it would not work. Still need research
    on it.<br>
    <br>
    <blockquote type="cite"
cite="mid:CAPb0b+OiKcY_EZk8L_B=qmJ=2QPzwTZu4XRRp6xw_cymdjaQqg@mail.gmail.com">
      <div dir="ltr">
        <div>
          <div>could it be a branch related? <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Not branch related.<br>
    <br>
    <blockquote type="cite"
cite="mid:CAPb0b+OiKcY_EZk8L_B=qmJ=2QPzwTZu4XRRp6xw_cymdjaQqg@mail.gmail.com">
      <div dir="ltr">
        <div>
          <div>I am using the morty branch<br>
          </div>
          meta-yocto-bsp: morty<br>
        </div>
        meta-raspberrypi: morty<br>
        <br>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Fri, Dec 15, 2017 at 6:30 AM, Dengke
          Du <span dir="ltr">&lt;<a
              href="mailto:dengke.du@windriver.com" target="_blank"
              moz-do-not-send="true">dengke.du@windriver.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div text="#000000" bgcolor="#FFFFFF">
              <p>You should attach the bluez stack with the raspberry
                firmware bcm43xx:</p>
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
              <div>
                <div class="h5"> <br>
                  <div class="m_5036739186136312151moz-cite-prefix">On
                    2017年12月15日 12:43, Sherif Omran wrote:<br>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">
                      <div>
                        <div>hello<br>
                          <br>
                        </div>
                        i ve been strugggeling since couple of days with
                        raspberry pi 0 board and can not figure out how
                        to enable the chip, whether it is enabled by
                        default or it needs some intervention. I
                        generated the rpi-basic-image and tested with
                        the hiconfigure -a but the chip is not detected.<br>
                        <br>
                      </div>
                      Any body had similar issue and got it to solve?<br>
                    </div>
                    <br>
                    <fieldset
                      class="m_5036739186136312151mimeAttachmentHeader"></fieldset>
                    <br>
                  </blockquote>
                  <br>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------A55055C60CFA3E0B76BF20F5--
