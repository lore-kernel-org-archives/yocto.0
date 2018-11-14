Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67EEAE00C4B; Wed, 14 Nov 2018 01:23:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10415E00C3D
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 01:23:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id wAE9NMBZ003133
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Nov 2018 01:23:22 -0800 (PST)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 14 Nov 2018 01:23:22 -0800
To: Conor Slater <slaterc@gmail.com>, <yocto@yoctoproject.org>
References: <CAH+z4xQb_RwqZD8tViAMUeSgPSwhA6sXiFe-+3y7Q=zajNNj2A@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <c4391df3-da80-64a6-2b20-3535853a426f@windriver.com>
Date: Wed, 14 Nov 2018 17:30:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAH+z4xQb_RwqZD8tViAMUeSgPSwhA6sXiFe-+3y7Q=zajNNj2A@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
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
X-List-Received-Date: Wed, 14 Nov 2018 09:23:26 -0000
Content-Type: multipart/alternative;
	boundary="------------DDBEF81AC03D2722344E0E4E"

--------------DDBEF81AC03D2722344E0E4E
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

For the current codes, manually creating symlink is the easiest way to 
achieve your goal.
The current mechanism in systemd.bbclass has to 'enable' or 'disable' 
all services in SYSTEMD_SERVICE_xxx. There's no mechanism to enable or 
disable a subset of them.
This might need to be improved.

Best Regards,
Chen Qi

On 11/14/2018 05:11 PM, Conor Slater wrote:
> Dear All,
>
> I'm trying to start wpa_supplicant with wlan0 as the interface on boot 
> using systemd.
>
> I've created the following .bbappend for wpa_supplicant to install the 
> new configuration and enable the wpa_supplicant@wlan0.service. This 
> doesn't enable the service and somehow breaks being able the start the 
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
> As a workaround, I created a .bbappend to manually create the symlink 
> for systemd which does enable the service. Although, I would like to 
> know if there is a better way of doing this.
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
>     ln -s ../../../../lib/systemd/system/wpa_supplicant@.service 
> ${D}${sysconfdir}/systemd/system/multi-user.target.wants/wpa_supplicant@wlan0.service
> }
>
>
>


--------------DDBEF81AC03D2722344E0E4E
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">For the current codes, manually
      creating symlink is the easiest way to achieve your goal.<br>
      The current mechanism in systemd.bbclass has to 'enable' or
      'disable' all services in SYSTEMD_SERVICE_xxx. There's no
      mechanism to enable or disable a subset of them.<br>
      This might need to be improved.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 11/14/2018 05:11 PM, Conor Slater wrote:<br>
    </div>
    <blockquote
cite="mid:CAH+z4xQb_RwqZD8tViAMUeSgPSwhA6sXiFe-+3y7Q=zajNNj2A@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">Dear All,
              <div><br>
              </div>
              <div>I'm trying to start wpa_supplicant with wlan0 as the
                interface on boot using systemd.</div>
              <div><br>
              </div>
              <div>I've created the following .bbappend for
                wpa_supplicant to install the new configuration and
                enable the <a class="moz-txt-link-abbreviated" href="mailto:wpa_supplicant@wlan0.service">wpa_supplicant@wlan0.service</a>. This doesn't
                enable the service and somehow breaks being able the
                start the <a class="moz-txt-link-abbreviated" href="mailto:wpa_supplicant@wlan0.service">wpa_supplicant@wlan0.service</a>.</div>
              <div><br>
              </div>
              <div>Has anybody else figured out how to get this to work?</div>
              <div><br>
              </div>
              <div>$ cat wpa-supplicant_2.%.bbppend:  <br>
              </div>
              <div><br>
              </div>
              <div>
                <div>FILESEXTRAPATHS_prepend := "${THISDIR}/files:"</div>
                <div><br>
                </div>
                <div>SRC_URI_append = <a class="moz-txt-link-rfc2396E" href="file://wpa_supplicant-wlan0.conf">"
                  file://wpa_supplicant-wlan0.conf"</a></div>
                <div><br>
                </div>
                <div>inherit systemd</div>
                <div><br>
                </div>
                <div>SYSTEMD_PACKAGES = "${PN}"</div>
                <div>SYSTEMD_SERVICE_${PN} += "
                  <a class="moz-txt-link-abbreviated" href="mailto:wpa_supplicant@wlan0.service">wpa_supplicant@wlan0.service</a>"</div>
                <div>SYSTEMD_AUTO_ENABLE = "enable"</div>
                <div><br>
                </div>
                <div>do_install_append () {</div>
                <div>    install -d ${D}${sysconfdir}/wpa_supplicant</div>
                <div>    install -m 0644
                  ${WORKDIR}/wpa_supplicant-wlan0.conf
                  ${D}/${sysconfdir}/wpa_supplicant/</div>
                <div>}</div>
              </div>
              <div><br>
              </div>
              <div>As a workaround, I created a .bbappend to manually
                create the symlink for systemd which does enable the
                service. Although, I would like to know if there is a
                better way of doing this.</div>
              <div><br>
              </div>
              <div>$ cat wpa-supplicant_2.%.bbppend:</div>
              <div><br>
              </div>
              <div>
                <div>FILESEXTRAPATHS_prepend := "${THISDIR}/files:"</div>
                <div><br>
                </div>
                <div>SRC_URI_append = <a class="moz-txt-link-rfc2396E" href="file://wpa_supplicant-wlan0.conf">"
                  file://wpa_supplicant-wlan0.conf"</a></div>
                <div><br>
                </div>
                <div>do_install_append () {</div>
                <div>    install -d ${D}${sysconfdir}/wpa_supplicant</div>
                <div>    install -m 0644
                  ${WORKDIR}/wpa_supplicant-wlan0.conf
                  ${D}/${sysconfdir}/wpa_supplicant/</div>
                <div>    install -d
                  ${D}${sysconfdir}/systemd/system/multi-user.target.wants</div>
                <div>    ln -s
                  ../../../../lib/systemd/system/wpa_supplicant@.service
${D}${<a class="moz-txt-link-abbreviated" href="mailto:sysconfdir}/systemd/system/multi-user.target.wants/wpa_supplicant@wlan0.service">sysconfdir}/systemd/system/multi-user.target.wants/wpa_supplicant@wlan0.service</a></div>
                <div>}</div>
              </div>
              <div><br>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------DDBEF81AC03D2722344E0E4E--
