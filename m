Return-Path: <stefano.cordibella@edalab.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32DD3E0084E; Tue, 22 Mar 2016 07:37:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from smtpcmd04134.aruba.it (smtpcmd04134.aruba.it [62.149.158.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1982E004A0
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 07:37:45 -0700 (PDT)
Received: from [157.27.147.163] ([157.27.147.163])
	by smtpcmd04.ad.aruba.it with bizsmtp
	id Z2dj1s00c3XlD4V012djae; Tue, 22 Mar 2016 15:37:43 +0100
To: yocto@yoctoproject.org
From: Stefano Cordibella <stefano.cordibella@edalab.it>
Message-ID: <56F158B7.7020300@edalab.it>
Date: Tue, 22 Mar 2016 15:37:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
Subject: Append a pkg_postinst script
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
X-List-Received-Date: Tue, 22 Mar 2016 14:37:50 -0000
Content-Type: multipart/alternative;
	boundary="------------000501070305020000030306"

--------------000501070305020000030306
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi list,
     just a simple question: what is the best way to append a 
pkg_postinst script?
I haven't found any information about a pkg_postint_${PN}_append () ...
I extended a recipe, via bbappend, that already defined a 
pkg_postinst_${PN} ()...

Thank you for your time,
Stefano.

-- 
*Stefano Cordibella*
EDALab s.r.l. - Networked Embedded Systems

Strada Le Grazie, 15 - 37134 Verona - Italy
email : stefano.cordibella@edalab.it
skype : stefano.cordibella
tel. : +39 045 802 70 85
web : www.edalab.it

--------------000501070305020000030306
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi list,<br>
        just a simple question: what is the best way to append a
    pkg_postinst script?<br>
    I haven't found any information about a pkg_postint_${PN}_append ()
    ...<br>
    I extended a recipe, via bbappend, that already defined a
    pkg_postinst_${PN} ()...<br>
    <br>
    Thank you for your time,<br>
    Stefano.<br>
    <br>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title></title>
      <div class="moz-signature"> <b>Stefano Cordibella</b><br>
        EDALab s.r.l. - Networked Embedded Systems<br>
        <br>
        Strada Le Grazie, 15 - 37134 Verona - Italy<br>
        email : <a class="moz-txt-link-abbreviated" href="mailto:stefano.cordibella@edalab.it">stefano.cordibella@edalab.it</a><br>
        skype : stefano.cordibella<br>
        tel. : +39 045 802 70 85<br>
        web : <a class="moz-txt-link-abbreviated" href="http://www.edalab.it">www.edalab.it</a><br>
      </div>
    </div>
  </body>
</html>

--------------000501070305020000030306--
