Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DF10E00BFB; Thu, 14 Jun 2018 06:50:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.121.55.239 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 4697 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Jun 2018 06:50:50 PDT
Received: from 20.mo5.mail-out.ovh.net (20.mo5.mail-out.ovh.net
	[91.121.55.239])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7CF2E00972
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 06:50:50 -0700 (PDT)
Received: from player697.ha.ovh.net (unknown [10.109.120.107])
	by mo5.mail-out.ovh.net (Postfix) with ESMTP id 0B01C1C154B
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 14:32:31 +0200 (CEST)
Received: from [192.168.3.103] (unknown [109.241.231.46])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player697.ha.ovh.net (Postfix) with ESMTPSA id A716248009F;
	Thu, 14 Jun 2018 14:32:30 +0200 (CEST)
To: Damien LEFEVRE <lefevre.da@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <4bc711d6-8410-c213-cf67-1c5f674aa29b@3mdeb.com>
Date: Thu, 14 Jun 2018 14:32:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
X-Ovh-Tracer-Id: 6944269154178641577
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedthedrleefgdehudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Subject: Re: bbappend extra SRC_URI ignored
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
X-List-Received-Date: Thu, 14 Jun 2018 13:50:52 -0000
Content-Type: multipart/alternative;
	boundary="------------66950F7556E34C091B718AE6"
Content-Language: en-US

--------------66950F7556E34C091B718AE6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 14.06.2018 14:16, Damien LEFEVRE wrote:
> HI,
>
> I'm working on meta-tegra layer and I'd like to append a recipe. The 
> original recipe looks like this:
> https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb 
> <https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb>
>
> I've made a tegra-tools_28.2.0.bbappend to change the default 
> PM_CONFIG DEFAULT from 2 to 3 to get max performance in nvpmodel.conf 
> configuration file.
>
> ```
> FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"
> SRC_URI_prepend_tegra186 += "file://nvpmodel.conf "
It looks like a common mistake of mixing append / prepend with +=.
I do not know this recipe or machine, but i would try with changing this 
line
to: `SRC_URI_tegra186 += "file://nvpmodel.conf "` first
>
> do_install_append_tegra186() {
>     install -d ${D}${sysconfdir}
>     install -m 0755 ${B}/usr/sbin/nvpmodel ${D}${sbindir}/
>     install -m 0644 ${WORKDIR}/nvpmodel.conf 
> ${D}${sysconfdir}/nvpmodel.conf
>     install -d ${D}${sysconfdir}/init.d
>     install -m 0644 ${S}/nvpmodel.init ${D}${sysconfdir}/init.d/nvpmodel
>     install -d ${D}${systemd_system_unitdir}
>     install -m 0644 ${S}/nvpmodel.service ${D}${systemd_system_unitdir}
> }
> ```
> Would you have any idea why the nvpmodel.conf prepend is ignored and 
> the file never ends up in ${WORKDIR}.
>
> I've made sure the paths are correct. nvpmodel.conf exists and if I 
> put a typo like nvpmodel.conf_blabla bitbake throws a warning that it 
> cannot find the file. So I'm sure the file is found but somehow 
> bitbake ignores it.
>
> I'm having this issue with this one single recipe only, none of the 
> others in my build system so I'm a bit puzzled.
>
> Thanks,
> -Damien
>
>
>
>

-- 
Maciej Pijanowski
Embedded Systems Engineer
http://3mdeb.com | @3mdeb_com


--------------66950F7556E34C091B718AE6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 14.06.2018 14:16, Damien LEFEVRE
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com">
      <div dir="ltr">HI,
        <div>
          <div><br>
          </div>
          <div>I'm working on meta-tegra layer and I'd like to append a
            recipe. The original recipe looks like this:</div>
          <div><a
href="https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb"
              moz-do-not-send="true">https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/tegra-binaries/tegra-tools_28.2.0.bb </a><br>
          </div>
          <div><br>
          </div>
          <div>I've made a tegra-tools_28.2.0.bbappend to change the
            default PM_CONFIG DEFAULT from 2 to 3 to get max performance
            in <span
style="background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;float:none;display:inline">nvpmodel.conf</span>
            configuration file.</div>
          <div><br>
          </div>
          <div>```</div>
          <div>FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"</div>
          <div>SRC_URI_prepend_tegra186 += <a class="moz-txt-link-rfc2396E" href="file://nvpmodel.conf">"file://nvpmodel.conf "</a></div>
        </div>
      </div>
    </blockquote>
    It looks like a common mistake of mixing append / prepend with +=.<br>
    I do not know this recipe or machine, but i would try with changing
    this line<br>
    to: `SRC_URI_tegra186 += <a class="moz-txt-link-rfc2396E" href="file://nvpmodel.conf">"file://nvpmodel.conf "</a>` first<br>
    <blockquote type="cite"
cite="mid:CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com">
      <div dir="ltr">
        <div>
          <div><br>
          </div>
          <div>do_install_append_tegra186() {</div>
          <div>    install -d ${D}${sysconfdir}</div>
          <div>    install -m 0755 ${B}/usr/sbin/nvpmodel
            ${D}${sbindir}/</div>
          <div>    install -m 0644 ${WORKDIR}/nvpmodel.conf
            ${D}${sysconfdir}/nvpmodel.conf</div>
          <div>    install -d ${D}${sysconfdir}/init.d</div>
          <div>    install -m 0644 ${S}/nvpmodel.init
            ${D}${sysconfdir}/init.d/nvpmodel</div>
          <div>    install -d ${D}${systemd_system_unitdir}</div>
          <div>    install -m 0644 ${S}/nvpmodel.service
            ${D}${systemd_system_unitdir}</div>
          <div>}</div>
          <div>```</div>
          <div>Would you have any idea why the nvpmodel.conf prepend is
            ignored and the file never ends up in ${WORKDIR}. </div>
          <div><br>
          </div>
          <div>I've made sure the paths are correct. nvpmodel.conf
            exists and if I put a typo like nvpmodel.conf_blabla bitbake
            throws a warning that it cannot find the file. So I'm sure
            the file is found but somehow bitbake ignores it.</div>
          <div><br>
          </div>
          <div>I'm having this issue with this one single recipe only,
            none of the others in my build system so I'm a bit puzzled.</div>
        </div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>-Damien</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <!--'"--><br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="http://3mdeb.com">http://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------66950F7556E34C091B718AE6--
