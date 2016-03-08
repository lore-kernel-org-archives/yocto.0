Return-Path: <stefano.cordibella@edalab.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7364E008F1; Tue,  8 Mar 2016 06:54:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.218 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from smtpcmd01218.aruba.it (smtpcmd01218.aruba.it [62.149.158.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA8B4E008C6
	for <yocto@yoctoproject.org>; Tue,  8 Mar 2016 06:54:08 -0800 (PST)
Received: from [157.27.224.72] ([157.27.224.72])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id TSu51s01X1aLQ4l01Su5xH; Tue, 08 Mar 2016 15:54:06 +0100
To: yocto@yoctoproject.org
From: Stefano Cordibella <stefano.cordibella@edalab.it>
Message-ID: <56DEE78D.6070609@edalab.it>
Date: Tue, 8 Mar 2016 15:54:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: Image SDK with qmake
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
X-List-Received-Date: Tue, 08 Mar 2016 14:54:15 -0000
Content-Type: multipart/alternative;
	boundary="------------050305060608000905020308"

--------------050305060608000905020308
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi list,
     I am working on an image that use Qt5 and now I want to share an 
SDK with some of our developers.

When I try to generate the SDK with bitbake -c populate_sdk 
<image_name>  there isn't a cross qmake in the generated SDK.
On the other hand when I try to use bitbake meta-toolchain-qt5 some 
image libraries and tools are missing on the SDK.

I read about Qt5 and SDK in the meta-qt5 wiki, but I suppose that the 
related patch is integrated in the fido release that I am using.

So the question is: are there any way to generate a complete SDK with 
Qt5 cross tools for my custom image? I have to add some sort on 
nativesdk qt5 package to my image in IMAGE_INSTALL ?

Thank you in advance,
Stefano.

-- 
*Stefano Cordibella*
EDALab s.r.l. - Networked Embedded Systems

Strada Le Grazie, 15 - 37134 Verona - Italy
email : stefano.cordibella@edalab.it
skype : stefano.cordibella
tel. : +39 045 802 70 85
web : www.edalab.it

--------------050305060608000905020308
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi list,<br>
        I am working on an image that use Qt5 and now I want to share an
    SDK with some of our developers.<br>
    <br>
    When I try to generate the SDK with <tt>bitbake -c populate_sdk
      &lt;image_name&gt;</tt>  there isn't a cross qmake in the
    generated SDK.<br>
    On the other hand when I try to use <tt>bitbake meta-toolchain-qt5</tt>
    some image libraries and tools are missing on the SDK.<br>
    <br>
    I read about Qt5 and SDK in the meta-qt5 wiki, but I suppose that
    the related patch is integrated in the fido release that I am using.<br>
    <br>
    So the question is: are there any way to generate a complete SDK
    with Qt5 cross tools for my custom image? I have to add some sort on
    nativesdk qt5 package to my image in IMAGE_INSTALL ?<br>
    <br>
    Thank you in advance,<br>
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

--------------050305060608000905020308--
