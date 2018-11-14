Return-Path: <slaterc@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7AE0E00C4E; Wed, 14 Nov 2018 01:26:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.167.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (slaterc[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A001E00C49
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 01:26:49 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id v6so671950oif.2
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 01:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=07LK0EtYQfbz3Ew2XSbDGLSLWpEUIinKGQBTYqLCXJg=;
	b=s8rpiwA/yPo0G09ivhcWtg/Ug3XjtlvI5VS+XWHQUdiytMUiAjfe3xMLwI20w2dWFh
	OdyJOb3RzXcJtz3Tp1A35Ckio/XdXtjCIBGV/vQC2PnEVGTO6hJ2Ei6hFKVIS3Ts8RRQ
	0ySPRXaN6aoVJyeGmphE4dfSeL/e4OGG1CtG0LmWuOYQFIzxmHpa3KTwzzbwVcIZWJ8k
	nwnDXQsdGMPikdaMGUO/ccVTjjTmkS5GaqBPybj3vsvv5Q4YekyTV5GmK5N6OJdk5KZ6
	DCQrWF9BkstF5EsKZir2L8dypuSR+bCMrBmdg0zLcJNL8nuxqiAURC6kRmB9TTIpOp6i
	W2WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=07LK0EtYQfbz3Ew2XSbDGLSLWpEUIinKGQBTYqLCXJg=;
	b=GJhid4SM6PuZCgzTinLQ6x6V1yJLxRzWds3MJ6qvyJLMW7e5ZsfUz0M7I40kNt1FQ4
	ic3KDx9eIfBJchDj1yFEkE6LfcScfof6/Iks8+3r9e41bfEdcsoN/+OxQ8g03kQ9TZYx
	4r9SyG1oZaU9TS0gntmqtb0gmuSUnTo36ycF7wzVPzZtWEEWXvR5WYygvcb5H1Vn4qoY
	FZ05FccIFAmOQ8U22qCtZC3BbBKsNX60kB71GkwiE12nTZWFRqyDqTWlR4Sw0RPl7u9Q
	8rK2Xs6mFt6gQ78AG1GKcd1uGPWqFi2YU0Or01DUU2V0BplpUVkS7FaNOpXyRlnxhTbn
	778g==
X-Gm-Message-State: AGRZ1gJhXB6Vzz/oP4TjFelY60rmBtN0kxmZ7iffZBXN+tLzsQKb3Z/x
	oouYYNkY61tbSazDPoNrttntRjHJJWH9JAHUKFs=
X-Google-Smtp-Source: AJdET5dNVsu8nY6E+65H7cQUc28PbGNzsKQCUyCA8Y7dSatVkH1k84ujsf+E1Wmk7zQhOphvq2eDXMUS1WXQDwFxfIs=
X-Received: by 2002:aca:c088:: with SMTP id
	q130-v6mr630818oif.353.1542187608554; 
	Wed, 14 Nov 2018 01:26:48 -0800 (PST)
MIME-Version: 1.0
References: <CAH+z4xQb_RwqZD8tViAMUeSgPSwhA6sXiFe-+3y7Q=zajNNj2A@mail.gmail.com>
	<c4391df3-da80-64a6-2b20-3535853a426f@windriver.com>
In-Reply-To: <c4391df3-da80-64a6-2b20-3535853a426f@windriver.com>
From: Conor Slater <slaterc@gmail.com>
Date: Wed, 14 Nov 2018 10:26:37 +0100
Message-ID: <CAH+z4xTWrU_9BSM3piF27D8-rKvib91as01hy-u4t0PQML6j=w@mail.gmail.com>
To: Qi.Chen@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: Enable wpa_supplicant@wlan0.service on boot with systemd
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
X-List-Received-Date: Wed, 14 Nov 2018 09:26:50 -0000
Content-Type: multipart/alternative; boundary="00000000000095c276057a9c88bf"

--00000000000095c276057a9c88bf
Content-Type: text/plain; charset="UTF-8"

Thank you Chen Qi,

This makes it a lot clearer...

On Wed, 14 Nov 2018 at 10:23, ChenQi <Qi.Chen@windriver.com> wrote:

> For the current codes, manually creating symlink is the easiest way to
> achieve your goal.
> The current mechanism in systemd.bbclass has to 'enable' or 'disable' all
> services in SYSTEMD_SERVICE_xxx. There's no mechanism to enable or disable
> a subset of them.
> This might need to be improved.
>
> Best Regards,
> Chen Qi
>
> On 11/14/2018 05:11 PM, Conor Slater wrote:
>
> Dear All,
>
> I'm trying to start wpa_supplicant with wlan0 as the interface on boot
> using systemd.
>
> I've created the following .bbappend for wpa_supplicant to install the new
> configuration and enable the wpa_supplicant@wlan0.service. This doesn't
> enable the service and somehow breaks being able the start the
> wpa_supplicant@wlan0.service.
>
> Has anybody else figured out how to get this to work?
>
> $ cat wpa-supplicant_2.%.bbppend:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> SRC_URI_append = " file://wpa_supplicant-wlan0.conf"
>
> inherit systemd
>
> SYSTEMD_PACKAGES = "${PN}"
> SYSTEMD_SERVICE_${PN} += " wpa_supplicant@wlan0.service"
> SYSTEMD_AUTO_ENABLE = "enable"
>
> do_install_append () {
>     install -d ${D}${sysconfdir}/wpa_supplicant
>     install -m 0644 ${WORKDIR}/wpa_supplicant-wlan0.conf
> ${D}/${sysconfdir}/wpa_supplicant/
> }
>
> As a workaround, I created a .bbappend to manually create the symlink for
> systemd which does enable the service. Although, I would like to know if
> there is a better way of doing this.
>
> $ cat wpa-supplicant_2.%.bbppend:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> SRC_URI_append = " file://wpa_supplicant-wlan0.conf"
>
> do_install_append () {
>     install -d ${D}${sysconfdir}/wpa_supplicant
>     install -m 0644 ${WORKDIR}/wpa_supplicant-wlan0.conf
> ${D}/${sysconfdir}/wpa_supplicant/
>     install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants
>     ln -s ../../../../lib/systemd/system/wpa_supplicant@.service ${D}${
> sysconfdir}/systemd/system/multi-user.target.wants/wpa_supplicant@wlan0.service
> }
>
>
>
>
>

--00000000000095c276057a9c88bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Chen Qi,<div><br></div><div>This makes it a lot =
clearer...</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On We=
d, 14 Nov 2018 at 10:23, ChenQi &lt;<a href=3D"mailto:Qi.Chen@windriver.com=
">Qi.Chen@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"m_-2296619170570842727moz-cite-prefix">For the current co=
des, manually
      creating symlink is the easiest way to achieve your goal.<br>
      The current mechanism in systemd.bbclass has to &#39;enable&#39; or
      &#39;disable&#39; all services in SYSTEMD_SERVICE_xxx. There&#39;s no
      mechanism to enable or disable a subset of them.<br>
      This might need to be improved.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 11/14/2018 05:11 PM, Conor Slater wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">Dear All,
              <div><br>
              </div>
              <div>I&#39;m trying to start wpa_supplicant with wlan0 as the
                interface on boot using systemd.</div>
              <div><br>
              </div>
              <div>I&#39;ve created the following .bbappend=C2=A0for
                wpa_supplicant to install the new configuration and
                enable the <a class=3D"m_-2296619170570842727moz-txt-link-a=
bbreviated" href=3D"mailto:wpa_supplicant@wlan0.service" target=3D"_blank">=
wpa_supplicant@wlan0.service</a>. This doesn&#39;t
                enable the service and somehow breaks being able the
                start the <a class=3D"m_-2296619170570842727moz-txt-link-ab=
breviated" href=3D"mailto:wpa_supplicant@wlan0.service" target=3D"_blank">w=
pa_supplicant@wlan0.service</a>.</div>
              <div><br>
              </div>
              <div>Has anybody else figured out how to get this to work?</d=
iv>
              <div><br>
              </div>
              <div>$ cat wpa-supplicant_2.%.bbppend:=C2=A0=C2=A0<br>
              </div>
              <div><br>
              </div>
              <div>
                <div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&q=
uot;</div>
                <div><br>
                </div>
                <div>SRC_URI_append =3D <a class=3D"m_-2296619170570842727m=
oz-txt-link-rfc2396E">&quot;
                  file://wpa_supplicant-wlan0.conf&quot;</a></div>
                <div><br>
                </div>
                <div>inherit systemd</div>
                <div><br>
                </div>
                <div>SYSTEMD_PACKAGES =3D &quot;${PN}&quot;</div>
                <div>SYSTEMD_SERVICE_${PN} +=3D &quot;
                  <a class=3D"m_-2296619170570842727moz-txt-link-abbreviate=
d" href=3D"mailto:wpa_supplicant@wlan0.service" target=3D"_blank">wpa_suppl=
icant@wlan0.service</a>&quot;</div>
                <div>SYSTEMD_AUTO_ENABLE =3D &quot;enable&quot;</div>
                <div><br>
                </div>
                <div>do_install_append () {</div>
                <div>=C2=A0 =C2=A0 install -d ${D}${sysconfdir}/wpa_supplic=
ant</div>
                <div>=C2=A0 =C2=A0 install -m 0644
                  ${WORKDIR}/wpa_supplicant-wlan0.conf
                  ${D}/${sysconfdir}/wpa_supplicant/</div>
                <div>}</div>
              </div>
              <div><br>
              </div>
              <div>As a workaround, I created a .bbappend to manually
                create the symlink for systemd=C2=A0which does enable the
                service. Although, I would like to know if there is a
                better way of doing this.</div>
              <div><br>
              </div>
              <div>$ cat wpa-supplicant_2.%.bbppend:</div>
              <div><br>
              </div>
              <div>
                <div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&q=
uot;</div>
                <div><br>
                </div>
                <div>SRC_URI_append =3D <a class=3D"m_-2296619170570842727m=
oz-txt-link-rfc2396E">&quot;
                  file://wpa_supplicant-wlan0.conf&quot;</a></div>
                <div><br>
                </div>
                <div>do_install_append () {</div>
                <div>=C2=A0 =C2=A0 install -d ${D}${sysconfdir}/wpa_supplic=
ant</div>
                <div>=C2=A0 =C2=A0 install -m 0644
                  ${WORKDIR}/wpa_supplicant-wlan0.conf
                  ${D}/${sysconfdir}/wpa_supplicant/</div>
                <div>=C2=A0 =C2=A0 install -d
                  ${D}${sysconfdir}/systemd/system/multi-user.target.wants<=
/div>
                <div>=C2=A0 =C2=A0 ln -s
                  ../../../../lib/systemd/system/wpa_supplicant@.service
${D}${<a class=3D"m_-2296619170570842727moz-txt-link-abbreviated" href=3D"m=
ailto:sysconfdir%7D/systemd/system/multi-user.target.wants/wpa_supplicant@w=
lan0.service" target=3D"_blank">sysconfdir}/systemd/system/multi-user.targe=
t.wants/wpa_supplicant@wlan0.service</a></div>
                <div>}</div>
              </div>
              <div><br>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"m_-2296619170570842727mimeAttachmentHeader"></fiel=
dset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </div>

</blockquote></div>

--00000000000095c276057a9c88bf--
