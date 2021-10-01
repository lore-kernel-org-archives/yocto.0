Return-Path: <james@greencubestech.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97113C433EF
	for <webhook@archiver.kernel.org>; Fri,  1 Oct 2021 06:51:40 +0000 (UTC)
Subject: How to enable and disable device tree node at runtime from linux
 userspace #dunfell
To: yocto@lists.yoctoproject.org
From: james@greencubestech.com
X-Originating-Location: Bengaluru, Karnataka, IN (106.51.72.174)
X-Originating-Platform: Linux Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 30 Sep 2021 23:51:39 -0700
Message-ID: <uUZz.1633071099250262499.OLNx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="a6WQqTxm3Y7niNH2fd0X"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Oct 2021 06:51:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54923

--a6WQqTxm3Y7niNH2fd0X
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hai All,

I wanted to use a GPIO to put the SOM into sleep mode and again use it to w=
ake it up from the sleep.
I used the below node to configure the SOM to use the GPIO1 18 to wake up f=
rom sleep.

keys {
compatible =3D "gpio-keys";
pinctrl-names =3D "default";
pinctrl-0 =3D <&pinctrl_gpio_userkeys> ;

wakeup {
gpios =3D <&gpio1 18 GPIO_ACTIVE_LOW>;
linux,code =3D <KEY_WAKEUP>;
gpio-key,wakeup;
};
}

But again to put into sleep I am unable to read the GPIO state from linux u=
serspace as it is used by driver. I am using libgpiod to read the gpio stat=
us for which I am getting device or resource busy error

# gpioget gpiochip0 18
gpioget: error reading GPIO values: Device or resource busy

How to disable the device tree node from linux user space so it is possible=
 to read the GPIO staus. And onces the button is pressed enable the device =
tree node and enter the sleep mode so the driver will take care of waking o=
f the SOM.
Or
Any other way to force read the status of GPIO status

Regards,
James A

--a6WQqTxm3Y7niNH2fd0X
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hai All,<br /><br />I wanted to use a GPIO to put the SOM into sleep mode a=
nd again use it to wake it up from the sleep.&nbsp;<br />I used the below n=
ode to configure the SOM to use the GPIO1 18 to wake up from sleep.
<div>&nbsp;</div>
<div>keys {</div>
<div><span style=3D"white-space: pre;"> </span>compatible =3D "gpio-keys";<=
/div>
<div><span style=3D"white-space: pre;"> </span>pinctrl-names =3D "default";=
</div>
<div><span style=3D"white-space: pre;"> </span>pinctrl-0 =3D &lt;&amp;pinct=
rl_gpio_userkeys&gt; ;</div>
<div>&nbsp;</div>
<div><span style=3D"white-space: pre;"> </span>wakeup {</div>
<div><span style=3D"white-space: pre;"> </span>gpios =3D &lt;&amp;gpio1 18 =
GPIO_ACTIVE_LOW&gt;;</div>
<div><span style=3D"white-space: pre;"> </span>linux,code =3D &lt;KEY_WAKEU=
P&gt;;</div>
<div><span style=3D"white-space: pre;"> </span>gpio-key,wakeup;</div>
<div><span style=3D"white-space: pre;"> </span>};</div>
<div><span style=3D"white-space: pre;"> </span>}<br /><br />But again to pu=
t into sleep I am unable to read the GPIO state from linux userspace as it =
is used by driver. I am using libgpiod to read the gpio status for which I =
am getting device or resource busy error<br /><br />
<div style=3D"line-height: 1.42857;"># gpioget gpiochip0 18</div>
<div style=3D"line-height: 1.42857;">gpioget: error reading GPIO values: De=
vice or resource busy<br /><br />How to disable the device tree node from l=
inux user space so it is possible to read the GPIO staus. And onces the but=
ton is pressed enable the device tree node and enter the sleep mode so the =
driver will take care of waking of the SOM.<br />Or<br />Any other way to f=
orce read the status of GPIO status&nbsp;<br /><br />Regards,<br />James A<=
/div>
</div>

--a6WQqTxm3Y7niNH2fd0X--

