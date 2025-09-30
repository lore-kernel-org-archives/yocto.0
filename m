Return-Path: <pavel.wavrechin@openindus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8816ACCA470
	for <webhook@archiver.kernel.org>; Tue, 30 Sep 2025 11:42:10 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web11.23329.1759232525147147029
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Sep 2025 04:42:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@openindus.com header.s=google header.b=J8glW6GY;
 spf=pass (domain: openindus.com, ip: 209.85.219.46, mailfrom: pavel.wavrechin@openindus.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-7ea50f94045so64446036d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 30 Sep 2025 04:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openindus.com; s=google; t=1759232524; x=1759837324; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZaMWJ1zVPKWs0QpwukbP0+vTHVh8cdypZniqKlOkLdU=;
        b=J8glW6GYTxZrIWbmn1YEbpQvHklgXgp5b3FTW5+6zvERl72bGFktl5UqmVSGD5ZYms
         5XY+j8iDcjb73k0y603CTEFFiFYQMOop9fJbdrKL3vEeywBhhBNlc7Xo5ECgBRLAH3CA
         MaBJlFhva+mQXoe30WeTj+tBQyp7kN5v9uc4iRrJi64b1XCDQIi85m4aq6smlCK460EO
         t4RscUjej1JTnl42Ad9UxdGjB7TeRaZOcyG7IKHNzXI4Oj0HWhIjncd2RKrNZXFd/Irk
         nC+QujahL11jH9as9iI6Pme+jmiESHxcNhpypIgtX/dRPuzeWId4YAfVi7NJE6VyHVV3
         NREg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759232524; x=1759837324;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZaMWJ1zVPKWs0QpwukbP0+vTHVh8cdypZniqKlOkLdU=;
        b=CJeZjrVC0imrZGxWqa5VeJ/sMGc83uky5B1AJlhbas2iFpcMNmCKU4wvLqkhugAocg
         opctpgvvsWZ8WsUKCoA5OmQ5HrzXJdJ+KlnCkJabr/R1+MwNz7r5xJQ8mf8omIClEeOh
         AtSWc4Op/Gdzcl6CLzuAmFQ2o8SiHHDxC0eAAj7I7NzhZuzyGeT55qjtkzU77/Wez/lB
         OWKu2Xf/5rPBZWXnE9KaFrBdu4y3nna8rG+0JZg6P598wjkKx7Gr+aVgWa4by/7UBLIZ
         0BMtSIDsp7ti7rHXcPDWS1blczCZuuN7ayi6pVrBLFJoqWvgUjnNJSszaB6htubGEf/T
         MGCQ==
X-Gm-Message-State: AOJu0Yy5Pd1dBKBcr2BEiZYgqxmSSw5SwGDeucCXpQoMKrBrhwLAN9WV
	TfWiy7TSHb++RmYIjKff4RtUkJDviRXTTjW0CTN+zauvcwTqF9VGXRLqOytaXb/0QpPwlhU0xfr
	pSHB7wsYiSTtJlSlqQu9fNEg/+c+ZTf0Z2GuaHeGxmG4D/aA4MBd1Uas=
X-Gm-Gg: ASbGncvJbbr0bFzSbSJteEFCdpYIvB+A7DA1hktUq0QzIAjPDS+uFBQlt1PtKP3eSRc
	h2Hqkbg1hDe3D9ZyBWYew7N7wBaHu30TmCuRlHkkp9fid7+6/gMCSYmM0kHcN8XtTbOKOVeSE9i
	4wCZx8okxtsgib8/n+b8a1W+/rel/X1EXxEDC7yJRmedY35EyKSmtEwuMsGDmYY4zHTcdpzJ9yi
	1svtdo4dcIMzBWeAIZjvm6JmJGzwsG+J5gPxBTBVw==
X-Google-Smtp-Source: AGHT+IE15P0WFTXq36G5zYVndFXVDX0Uc0Z7L6H6jT7Vis+8DIAvR05n76Uryf3U1hDx/3cfZOpVxlU3RYDKcapwKXU=
X-Received: by 2002:a05:6214:403:b0:70d:cef4:ea42 with SMTP id
 6a1803df08f44-86988a807b4mr47725866d6.1.1759232524041; Tue, 30 Sep 2025
 04:42:04 -0700 (PDT)
MIME-Version: 1.0
From: Pavel de Wavrechin <pavel.wavrechin@openindus.com>
Date: Tue, 30 Sep 2025 13:41:52 +0200
X-Gm-Features: AS18NWCgoGmXhK3UehllbKzB-8cqxliHH-iZAhesp0X5OamuRlmbcw1xjKFw8XA
Message-ID: <CAACb1KHW9bgtBrATx8+LeajavToKAZQSNkhxHpA+va=VNCgiYw@mail.gmail.com>
Subject: [QUESTION] ANX7688 USB Type-C driver issues on CM4 Yocto project
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ac52f20640033d80"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Sep 2025 11:42:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65893

--000000000000ac52f20640033d80
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto community,

I am currently working on a Yocto project to create a Linux system for an
electronic board based on a Raspberry Pi Compute Module 4 (CM4). Many
components are integrated on the board to provide various features.

One of these features is the *ANX7688*, which manages the board=E2=80=99s U=
SB
Type-C port. We need to support *video output* through this port, but also
allow *USB flash drive access*. The Type-C port is connected to the
ANX7688, and if a non-video device is connected, it switches to the *VL805*=
 USB
controller.

The *ANX7688 driver is not included in the Linux mainline*, so I adapted
the driver from the PinePhone project for our board. The driver *loads
correctly*, and the *work function executes properly*, displaying the state
of the three main pins: Cable Detect, Power Enable, and Reset.

*Observed issues:*

   -

   When I plug in a USB flash drive, the ANX7688 powers on and the Cable
   Detect pin does not change, but the *PD negotiation reports a 0=E2=80=AF=
mA limit*,
   so communication with the USB device does not occur.
   -

   Occasionally, when removing the USB flash drive, *Cable Detect remains
   high (1)* even though no device is connected to the Type-C port.
   -

   Many PD messages are exchanged, but *nothing happens when connecting a
   monitor* to the Type-C port.

*Relevant Device Tree overlay:*

/dts-v1/;
/plugin/;

/ {
    compatible =3D "brcm,bcm2711";

    fragment@0 {
        target =3D <&usb>;
        __overlay__ {
            dr_mode =3D "otg";
            usb-role-switch;
            role-switch-default-mode =3D "host";
            status =3D "okay";
        };
    };

    fragment@1 {
        target =3D <&i2c1>;
        __overlay__ {
            #address-cells =3D <1>;
            #size-cells =3D <0>;

            gpio_expander: gpio_expander@23 {
                compatible =3D "nxp,pcal6524";
                status =3D "okay";
                reg =3D <0x23>;
                gpio-controller;
                #gpio-cells =3D <2>;
                interrupt-parent =3D <&gpio>;
                interrupts =3D <6 2>;
                interrupt-controller;
                #interrupt-cells =3D <2>;
                int-gpios =3D <&gpio 6 0>;

                gpio-line-names =3D
                    "CMD_MOSFET_ALIM",
                    "RS_BUS_RESET",
                    "CAN_BUS_RESET",
                    "OI_GPIO",
                    "CAN_USER_RESET",
                    "RS_USER_RESET",
                    "CTRL_USB_SWITCH",
                    "5V_BORNIER_PG",
                    "BORNIER_EN",
                    "ANX7688_PE",
                    "ANX7688_CABLE_DET",
                    "ANX7688_RESET",
                    "STOR_Sensor4_Digital",
                    "ETOR1",
                    "STOR_Sensor1_Digital",
                    "ETOR2",
                    "ETOR4",
                    "STOR_Sensor2_Digital",
                    "ETOR3",
                    "STOR_Sensor3_Digital",
                    "STOR_CMD_1",
                    "STOR_CMD_2",
                    "STOR_CMD_3",
                    "STOR_CMD_4";
            };

            anx7688: anx7688@28 {
                compatible =3D "analogix,anx7688";
                reg =3D <0x28>;
                status =3D "okay";

                interrupt-parent =3D <&gpio>;
                interrupts =3D <45 8>;

                reset-gpios =3D <&gpio_expander 11 0>;
                enable-gpios =3D <&gpio_expander 9 0>;
                cabledet-gpios =3D <&gpio_expander 10 0>;

                source-caps =3D <0x26019032>;
                sink-caps =3D <0x2601912C>;

                vbus-supply =3D <&vdd_5v0_reg>;
                vbus_in-supply =3D <&power 6>;

                role-switch =3D <&usb>;
            };
        };
    };
};

I would greatly appreciate any guidance on the following:

   -

   Is my approach for integrating this non-mainline driver into Yocto
   correct?
   -

   Are there recommended steps or best practices for debugging USB
   Type-C/PD negotiation and video output on such hardware?

Thank you very much for your help!

Best regards,
Pavel

--000000000000ac52f20640033d80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Hello Yocto community,</p><p>I am currently working on =
a Yocto project to create a Linux system for an electronic board based on a=
 Raspberry Pi Compute Module 4 (CM4). Many components are integrated on the=
 board to provide various features.</p><p>One of these features is the=C2=
=A0<strong>ANX7688</strong>, which manages the board=E2=80=99s USB Type-C p=
ort. We need to support=C2=A0<strong>video output</strong>=C2=A0through thi=
s port, but also allow=C2=A0<strong>USB flash drive access</strong>. The Ty=
pe-C port is connected to the ANX7688, and if a non-video device is connect=
ed, it switches to the=C2=A0<strong>VL805</strong>=C2=A0USB controller.</p>=
<p>The=C2=A0<strong>ANX7688 driver is not included in the Linux mainline</s=
trong>, so I adapted the driver from the PinePhone project for our board. T=
he driver=C2=A0<strong>loads correctly</strong>, and the=C2=A0<strong>work =
function executes properly</strong>, displaying the state of the three main=
 pins: Cable Detect, Power Enable, and Reset.</p><p><strong>Observed issues=
:</strong></p><ul><li style=3D"margin-left:15px"><p>When I plug in a USB fl=
ash drive, the ANX7688 powers on and the Cable Detect pin does not change, =
but the=C2=A0<strong>PD negotiation reports a 0=E2=80=AFmA limit</strong>, =
so communication with the USB device does not occur.</p></li><li style=3D"m=
argin-left:15px"><p>Occasionally, when removing the USB flash drive,=C2=A0<=
strong>Cable Detect remains high (1)</strong>=C2=A0even though no device is=
 connected to the Type-C port.</p></li><li style=3D"margin-left:15px"><p>Ma=
ny PD messages are exchanged, but=C2=A0<strong>nothing happens when connect=
ing a monitor</strong>=C2=A0to the Type-C port.</p></li></ul><p><strong>Rel=
evant Device Tree overlay:</strong></p><pre style=3D"text-wrap-mode: wrap;"=
><code>/dts-v1/;
/plugin/;

/ {
    compatible =3D &quot;brcm,bcm2711&quot;;
   =20
    fragment@0 {
        target =3D &lt;&amp;usb&gt;;
        __overlay__ {
            dr_mode =3D &quot;otg&quot;;
            usb-role-switch;
            role-switch-default-mode =3D &quot;host&quot;;
            status =3D &quot;okay&quot;;
        };
    };

    fragment@1 {
        target =3D &lt;&amp;i2c1&gt;;
        __overlay__ {
            #address-cells =3D &lt;1&gt;;
            #size-cells =3D &lt;0&gt;;

            gpio_expander: gpio_expander@23 {
                compatible =3D &quot;nxp,pcal6524&quot;;
                status =3D &quot;okay&quot;;
                reg =3D &lt;0x23&gt;;
                gpio-controller;
                #gpio-cells =3D &lt;2&gt;;
                interrupt-parent =3D &lt;&amp;gpio&gt;;
                interrupts =3D &lt;6 2&gt;;
                interrupt-controller;
                #interrupt-cells =3D &lt;2&gt;;
                int-gpios =3D &lt;&amp;gpio 6 0&gt;;

                gpio-line-names =3D
                    &quot;CMD_MOSFET_ALIM&quot;,
                    &quot;RS_BUS_RESET&quot;,
                    &quot;CAN_BUS_RESET&quot;,
                    &quot;OI_GPIO&quot;,
                    &quot;CAN_USER_RESET&quot;,
                    &quot;RS_USER_RESET&quot;,
                    &quot;CTRL_USB_SWITCH&quot;,
                    &quot;5V_BORNIER_PG&quot;,
                    &quot;BORNIER_EN&quot;,
                    &quot;ANX7688_PE&quot;,
                    &quot;ANX7688_CABLE_DET&quot;,
                    &quot;ANX7688_RESET&quot;,
                    &quot;STOR_Sensor4_Digital&quot;,
                    &quot;ETOR1&quot;,
                    &quot;STOR_Sensor1_Digital&quot;,
                    &quot;ETOR2&quot;,
                    &quot;ETOR4&quot;,
                    &quot;STOR_Sensor2_Digital&quot;,
                    &quot;ETOR3&quot;,
                    &quot;STOR_Sensor3_Digital&quot;,
                    &quot;STOR_CMD_1&quot;,
                    &quot;STOR_CMD_2&quot;,
                    &quot;STOR_CMD_3&quot;,
                    &quot;STOR_CMD_4&quot;;
            };

            anx7688: anx7688@28 {
                compatible =3D &quot;analogix,anx7688&quot;;
                reg =3D &lt;0x28&gt;;
                status =3D &quot;okay&quot;;

                interrupt-parent =3D &lt;&amp;gpio&gt;;
                interrupts =3D &lt;45 8&gt;;
               =20
                reset-gpios =3D &lt;&amp;gpio_expander 11 0&gt;;
                enable-gpios =3D &lt;&amp;gpio_expander 9 0&gt;;
                cabledet-gpios =3D &lt;&amp;gpio_expander 10 0&gt;;
               =20
                source-caps =3D &lt;0x26019032&gt;;
                sink-caps =3D &lt;0x2601912C&gt;;

                vbus-supply =3D &lt;&amp;vdd_5v0_reg&gt;;
                vbus_in-supply =3D &lt;&amp;power 6&gt;;

                role-switch =3D &lt;&amp;usb&gt;;
            };
        };
    };
};
</code></pre><p>I would greatly appreciate any guidance on the following:</=
p><ul><li style=3D"margin-left:15px"><p>Is my approach for integrating this=
 non-mainline driver into Yocto correct?</p></li><li style=3D"margin-left:1=
5px"><p>Are there recommended steps or best practices for debugging USB Typ=
e-C/PD negotiation and video output on such hardware?</p></li></ul><p>Thank=
 you very much for your help!</p><p>Best regards,<br>Pavel</p></div>

--000000000000ac52f20640033d80--

