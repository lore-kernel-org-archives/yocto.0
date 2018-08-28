Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0EACE00950; Mon, 27 Aug 2018 19:29:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64B12E00939
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2018 19:29:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7S2TDgS028243
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 27 Aug 2018 19:29:13 -0700 (PDT)
Received: from [128.224.162.202] (128.224.162.202) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.408.0;
	Mon, 27 Aug 2018 19:29:12 -0700
To: Raymond Yeung <rksyeung@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <cfeb43e9-d344-7928-0d20-6414727714f9@windriver.com>
Date: Tue, 28 Aug 2018 10:29:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
Subject: Re: Any Linux/Yocto Image Installer (for target system)
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
X-List-Received-Date: Tue, 28 Aug 2018 02:29:15 -0000
Content-Type: multipart/alternative;
	boundary="------------3D29310A5D637E152B7DDBB9"
Content-Language: en-US

--------------3D29310A5D637E152B7DDBB9
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2018年07月07日 05:52, Raymond Yeung wrote:
>
> Is there any installer that I could download along with the .hddimg 
> (or .iso) image to the RAM, invoke the installer, so we could have a 
> bootable image installed on a SSD?
>
>

Sorry for replying late

There is a target installer meta-anaconda in yocto, which is
derived from fedora's installer (anaconda)

Here is the README:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-anaconda/tree/README

//Hongxu


> History:
>
> I can already create USB live image with dd and .hddimg.  I could also 
> dd the .hddimg onto SSD and make it bootable.  The problem is that I 
> need multiple partitions on my 250MB SSD, some reserved for other 
> purposes.
>
>
> I find that when booting up with USB running SysLinux, I could install 
> GRUB, vmlinuz, along with boot.img and core.img under /boot directory, 
> and the rootFs under root (i.e. '/') directory.  That's 4 partitions. 
>  I believe I could resize the largest partition after installation to 
> do what I want.
>
>
> Is there a way to do this manually, possibly with a utility or a shell 
> script?
>
>
> Thanks,
>
> Raymond
>
>
>


--------------3D29310A5D637E152B7DDBB9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 2018年07月07日 05:52, Raymond Yeung
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p style="margin-top:0;margin-bottom:0">Is there any installer
          that I could download along with the .hddimg (or .iso) image
          to the RAM, invoke the installer, so we could have a bootable
          image installed on a SSD?</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
      </div>
    </blockquote>
    <br>
    Sorry for replying late<br>
    <br>
    There is a target installer meta-anaconda in yocto, which is<br>
    derived from fedora's installer (anaconda)<br>
    <br>
    Here is the README:<br>
    <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-anaconda/tree/README">http://git.yoctoproject.org/cgit/cgit.cgi/meta-anaconda/tree/README</a><br>
    <br>
    //Hongxu<br>
    <br>
    <br>
    <blockquote type="cite"
cite="mid:MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com">
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p style="margin-top:0;margin-bottom:0">
        </p>
        <p style="margin-top:0;margin-bottom:0">History:</p>
        <p style="margin-top:0;margin-bottom:0">I can already create USB
          live image with dd and .hddimg.  I could also dd the .hddimg
          onto SSD and make it bootable.  The problem is that I need
          multiple partitions on my 250MB SSD, some reserved for other
          purposes.</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">I find that when booting
          up with USB running SysLinux, I could install GRUB, vmlinuz,
          along with boot.img and core.img under /boot directory, and
          the rootFs under root (i.e. '/') directory.  That's 4
          partitions.  I believe I could resize the largest partition
          after installation to do what I want.</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">Is there a way to do
          this manually, possibly with a utility or a shell script?</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">Thanks,</p>
        <p style="margin-top:0;margin-bottom:0">Raymond</p>
        <div style="color: rgb(0, 0, 0);">
          <div dir="ltr">
            <div id="x_divtagdefaultwrapper" dir="ltr"
              style="font-size:12pt; color:#000000;
              font-family:Calibri,Helvetica,sans-serif">
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

--------------3D29310A5D637E152B7DDBB9--
