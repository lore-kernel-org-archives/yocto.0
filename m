Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57571E00D8E; Sun, 17 Nov 2019 14:01:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [188.165.45.168 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2398 seconds by postgrey-1.32 at yocto-www;
	Sun, 17 Nov 2019 14:00:59 PST
Received: from 20.mo1.mail-out.ovh.net (20.mo1.mail-out.ovh.net
	[188.165.45.168])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CE2BE00D60
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2019 14:00:59 -0800 (PST)
Received: from player157.ha.ovh.net (unknown [10.108.54.36])
	by mo1.mail-out.ovh.net (Postfix) with ESMTP id C0254199872
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2019 21:43:48 +0100 (CET)
Received: from 3mdeb.com (89-66-81-201.dynamic.chello.pl [89.66.81.201])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player157.ha.ovh.net (Postfix) with ESMTPSA id 514AAC233B2E;
	Sun, 17 Nov 2019 20:43:47 +0000 (UTC)
To: Mateusz Majchrzycki <majchrzycki.mateusz@gmail.com>, yocto@yoctoproject.org
References: <CADQzoRtS-ksG19HM-i1t+dS7Z+pKP7VW+Xru7uoSCKWX9KGnHg@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <3fd5264b-4a82-c258-e0f7-275f139d2a52@3mdeb.com>
Date: Sun, 17 Nov 2019 21:43:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <CADQzoRtS-ksG19HM-i1t+dS7Z+pKP7VW+Xru7uoSCKWX9KGnHg@mail.gmail.com>
X-Ovh-Tracer-Id: 12755320044657716905
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudegfedghedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtsegrtderredtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuffhomhgrihhnpeefmhguvggsrdgtohhmnecukfhppedtrddtrddtrddtpdekledrieeirdekuddrvddtudenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrudehjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheshihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: Re: Enable systemd service with parameter
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
X-List-Received-Date: Sun, 17 Nov 2019 22:01:01 -0000
Content-Type: multipart/alternative;
	boundary="------------7A37D6C5EA39539BE43DB23A"
Content-Language: en-US

--------------7A37D6C5EA39539BE43DB23A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 17.11.2019 20:44, Mateusz Majchrzycki wrote:
> Hi!
Hi,
> I have a pretty unusual problem. I need to enable a systemd service 
> (openvpn) with a profile as a parameter (typically you do it by 
> 'systemctl enable openvpn@profile'). But the profile on build time 
> doesn't exist (it is just symlink to non existing file).
> My recipe bb looks like (I'm omitting SUMMARY etc.):
>
> inherit systemd
> SYSTEMD_SERVICE_${PN} = "openvpn@clientprofile.service"
> SYSTEMD_AUTO_ENABLE = "enable"
> DEPENDS = "openvpn"
> SYSTEMD_PACKAGES = "${PN}"
>
> do_install() {
> install -d ${D}${sysconfdir}/openvpn/
> ln -sf /data/etc/openvpn/clientprofile.conf 
> ${D}${sysconfdir}/openvpn/clientprofile.conf
> }
>
> Unfortunately, on build I get the following error:
> ERROR: openvpn-client-1.0-r3 do_package: 
> SYSTEMD_SERVICE_openvpn-client value openvpn@clientprofile.service 
> does not exist
> ERROR: openvpn-client-1.0-r3 do_package: Function failed: 
> systemd_populate_packages
>
> What am I doing wrong? I suppose the symlink is not a problem as 
> normally systemctl enables service with non-existent file as a 
> parameter (it fails on start, but not enabling).
Maybe you could just create that file 
/data/etc/openvpn/clientprofile.conf and install it within the recipe?
It can be even empty. The service will keep failing. The build shall 
pass. Sounds reasonable?
>
> Best regards,
> Mateusz
>
>
-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------7A37D6C5EA39539BE43DB23A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 17.11.2019 20:44, Mateusz
      Majchrzycki wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADQzoRtS-ksG19HM-i1t+dS7Z+pKP7VW+Xru7uoSCKWX9KGnHg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:monospace,monospace"><span
            style="font-family:Arial,Helvetica,sans-serif">Hi!</span><br>
        </div>
      </div>
    </blockquote>
    Hi,<br>
    <blockquote type="cite"
cite="mid:CADQzoRtS-ksG19HM-i1t+dS7Z+pKP7VW+Xru7uoSCKWX9KGnHg@mail.gmail.com">
      <div dir="ltr">I have a pretty unusual problem. I need to enable a
        systemd service (openvpn) with a profile as a parameter
        (typically you do it by 'systemctl enable openvpn@profile'). But
        the profile on build time doesn't exist (it is just symlink to
        non existing file).<br>
        My recipe bb looks like (I'm omitting SUMMARY etc.):<br>
        <div class="gmail_default" style=""><br>
          inherit systemd<br>
          SYSTEMD_SERVICE_${PN} = <a class="moz-txt-link-rfc2396E" href="mailto:openvpn@clientprofile.service">"openvpn@clientprofile.service"</a><br>
          SYSTEMD_AUTO_ENABLE = "enable"<br>
          DEPENDS = "openvpn"<br>
          SYSTEMD_PACKAGES = "${PN}"<br>
          <br>
          do_install() {<br>
          install -d ${D}${sysconfdir}/openvpn/<br>
          ln -sf /data/etc/openvpn/clientprofile.conf
          ${D}${sysconfdir}/openvpn/clientprofile.conf<br>
          }<br>
        </div>
        <br>
        Unfortunately, on build I get the following error:<br>
        ERROR: openvpn-client-1.0-r3 do_package:
        SYSTEMD_SERVICE_openvpn-client value
        <a class="moz-txt-link-abbreviated" href="mailto:openvpn@clientprofile.service">openvpn@clientprofile.service</a> does not exist<br>
        ERROR: openvpn-client-1.0-r3 do_package: Function failed:
        systemd_populate_packages<br>
        <br>
        What am I doing wrong? I suppose the symlink is not a problem as
        normally systemctl enables service with non-existent file as a
        parameter (it fails on start, but not enabling).<br>
      </div>
    </blockquote>
    Maybe you could just create that file
    /data/etc/openvpn/clientprofile.conf and install it within the
    recipe?<br>
    It can be even empty. The service will keep failing. The build shall
    pass. Sounds reasonable?<br>
    <blockquote type="cite"
cite="mid:CADQzoRtS-ksG19HM-i1t+dS7Z+pKP7VW+Xru7uoSCKWX9KGnHg@mail.gmail.com">
      <div dir="ltr"><br>
        Best regards,<br>
        Mateusz
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------7A37D6C5EA39539BE43DB23A--
