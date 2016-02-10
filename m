Return-Path: <stefano.cordibella@edalab.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DC45E00CD4; Wed, 10 Feb 2016 00:17:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Feb 2016 00:17:21 PST
Received: from smtpdg227.aruba.it (smtpdg227.aruba.it [62.149.158.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 427CEE00CBE
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 00:17:21 -0800 (PST)
Received: from [157.27.224.72] ([157.27.224.72])
	by smtpcmd03.ad.aruba.it with bizsmtp
	id GYGG1s01E1aLQ4l01YGGQs; Wed, 10 Feb 2016 09:16:16 +0100
From: Stefano Cordibella <stefano.cordibella@edalab.it>
To: yocto@yoctoproject.org
Message-ID: <56BAF1D0.6070807@edalab.it>
Date: Wed, 10 Feb 2016 09:16:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: ClouchDB on Yocto
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
X-List-Received-Date: Wed, 10 Feb 2016 08:17:25 -0000
Content-Type: multipart/alternative;
	boundary="------------070407020804020105030600"

--------------070407020804020105030600
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi list,
     I am working with CouchDB and I want to integrate it in Yocto.

The main issue is that it requires an old version of spidermonkey 
(1.8.5) and this version generate an illegal instruction on my runtime 
(an ARM borad based on Freescale imx6). I am trying to patch 
spidermonkey using a patch that I have found googling around... I have 
also writtten to the couchdb developer but I haven't received an answer 
for now.

So for now the question is: why CouchDB isn't yet in Yocto? Because it 
is to difficult to integrate (spidermonkey and other deps) or because it 
isn't so interesting?

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

--------------070407020804020105030600
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi list,<br>
        I am working with CouchDB and I want to integrate it in Yocto.<br>
    <br>
    The main issue is that it requires an old version of spidermonkey
    (1.8.5) and this version generate an illegal instruction on my
    runtime (an ARM borad based on Freescale imx6). I am trying to patch
    spidermonkey using a patch that I have found googling around... I
    have also writtten to the couchdb developer but I haven't received
    an answer for now.<br>
    <br>
    So for now the question is: why CouchDB isn't yet in Yocto? Because
    it is to difficult to integrate (spidermonkey and other deps) or
    because it isn't so interesting?<br>
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
        email : <a class="moz-txt-link-abbreviated"
          href="mailto:stefano.cordibella@edalab.it">stefano.cordibella@edalab.it</a><br>
        skype : stefano.cordibella<br>
        tel. : +39 045 802 70 85<br>
        web : <a class="moz-txt-link-abbreviated"
          href="http://www.edalab.it">www.edalab.it</a><br>
      </div>
    </div>
  </body>
</html>

--------------070407020804020105030600--
