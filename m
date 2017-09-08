Return-Path: <fzhang@sgl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4E08E00CCE; Fri,  8 Sep 2017 09:00:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail.sgl.com (mail1.sgl.com [209.87.231.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9186E00970
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 09:00:50 -0700 (PDT)
Received: from [10.1.20.15] (unknown [10.1.20.15])
	by webmail.sgl.com (Postfix) with ESMTP id B9EC91D20B5E8
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 11:58:54 -0400 (EDT)
To: yocto@yoctoproject.org
From: Fan Zhang <fzhang@sgl.com>
Message-ID: <b2971216-bfa5-20d3-9cdd-ceee0afffb76@sgl.com>
Date: Fri, 8 Sep 2017 12:00:49 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: [meta-xilinx] How to include Xilinx DMA driver
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
X-List-Received-Date: Fri, 08 Sep 2017 16:00:51 -0000
X-Groupsio-MsgNum: 37743
Content-Type: multipart/mixed; boundary="------------9CFB9260314A02BA14F3D4B7"
Content-Language: en-US

--------------9CFB9260314A02BA14F3D4B7
Content-Type: multipart/alternative;
 boundary="------------715AD911ADACF73EAB366CF4"

--------------715AD911ADACF73EAB366CF4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

I have a design on Zynq that uses DMA, and I need to setup a driver to 
program the DMA controller, setup the data transfer and supply data to 
user space.

I searched around in the Xilinx forum, and found an dma_proxy driver. 
Xilinx also provides an xilinx_dma.c driver for the DMA. It is unclear 
to me how these all fit together. I have a few questions and I 
appreciate anyone to give me some pointer to moving things forward.

1. How to include xilinx_dma.c driver in to the poky image build?

    Xilinx wiki says enable these options: CONFIG_DMADEVICES,
    CONFIG_XILINX_DMA. I did a search on my bitbake folder, and they are
    enabled in a number of cfg files. But checking the environment with
    bitbake -e , and these options didn't show up. I can't find any
    xilinx_dma.ko in the build either. So what am I missing, and how can
    I include the xilinx driver into my build? Xilinx wiki page is here:
    http://www.wiki.xilinx.com/DMA+Drivers+-+Soft+IPs

2. I found a set of character device based dma driver, and it's user 
space application example. A number of people refer to this solution as 
an starting point for driver development. It's unclear to me whether 
this driver is built on top of the Xilinx_dma driver. When I tried this 
driver, it fails at requesting DMA channel. Anyone has experience with 
this driver, could you share your experience? Thank you so much.

    Driver can be found here:
    https://bitbucket.org/Schnegg/pa/src/b8f430a3ebd756f231e88e5dc8523737ed5db034/petalinux_project/components/modules/dma_proxy/dma_proxy.c?at=master&fileviewer=file-view-default

Best Regards,

Fan

	
	




--------------715AD911ADACF73EAB366CF4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p>Hi All,</p>
      <p>I have a design on Zynq that uses DMA, and I need to setup a
        driver to program the DMA controller, setup the data transfer
        and supply data to user space. <br>
      </p>
      <p>I searched around in the Xilinx forum, and found an dma_proxy
        driver. Xilinx also provides an xilinx_dma.c driver for the DMA.
        It is unclear to me how these all fit together. I have a few
        questions and I appreciate anyone to give me some pointer to
        moving things forward.</p>
      <p>1. How to include xilinx_dma.c driver in to the poky image
        build? <br>
      </p>
      <blockquote>
        <p>Xilinx wiki says enable these options<span style="box-sizing:
            border-box; color: rgb(0, 0, 0); font-family: arial,
            helvetica, sans-serif; font-size: 13px; font-style: normal;
            font-variant-ligatures: normal; font-variant-caps: normal;
            font-weight: normal; letter-spacing: normal; orphans: 2;
            text-align: start; text-indent: 0px; text-transform: none;
            white-space: normal; widows: 2; word-spacing: 0px;
            -webkit-text-stroke-width: 0px; text-decoration-style:
            initial; text-decoration-color: initial; background-color:
            rgb(255, 255, 255);">: CONFIG_</span><span style="color:
            rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;
            font-size: 13px; font-style: normal; font-variant-ligatures:
            normal; font-variant-caps: normal; font-weight: normal;
            letter-spacing: normal; orphans: 2; text-align: start;
            text-indent: 0px; text-transform: none; white-space: normal;
            widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
            0px; background-color: rgb(255, 255, 255);
            text-decoration-style: initial; text-decoration-color:
            initial; display: inline !important; float: none;">DMADEVICES</span><span
            style="box-sizing: border-box; color: rgb(0, 0, 0);
            font-family: arial, helvetica, sans-serif; font-size: 13px;
            font-style: normal; font-variant-ligatures: normal;
            font-variant-caps: normal; font-weight: normal;
            letter-spacing: normal; orphans: 2; text-align: start;
            text-indent: 0px; text-transform: none; white-space: normal;
            widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
            0px; text-decoration-style: initial; text-decoration-color:
            initial; background-color: rgb(255, 255, 255);">,
            CONFIG_XILINX_DMA</span>. I did a search on my bitbake
          folder, and they are enabled in a number of cfg files. But
          checking the environment with bitbake -e , and these options
          didn't show up. I can't find any xilinx_dma.ko in the build
          either. So what am I missing, and how can I include the xilinx
          driver into my build? Xilinx wiki page is here: <a
            class="moz-txt-link-freetext"
            href="http://www.wiki.xilinx.com/DMA+Drivers+-+Soft+IPs">http://www.wiki.xilinx.com/DMA+Drivers+-+Soft+IPs</a></p>
      </blockquote>
      <p>2. I found a set of character device based dma driver, and it's
        user space application example. A number of people refer to this
        solution as an starting point for driver development. It's
        unclear to me whether this driver is built on top of the
        Xilinx_dma driver. When I tried this driver, it fails at
        requesting DMA channel. Anyone has experience with this driver,
        could you share your experience? Thank you so much. <br>
      </p>
      <blockquote>Driver can be found here:
        <a class="moz-txt-link-freetext"
href="https://bitbucket.org/Schnegg/pa/src/b8f430a3ebd756f231e88e5dc8523737ed5db034/petalinux_project/components/modules/dma_proxy/dma_proxy.c?at=master&amp;fileviewer=file-view-default">https://bitbucket.org/Schnegg/pa/src/b8f430a3ebd756f231e88e5dc8523737ed5db034/petalinux_project/components/modules/dma_proxy/dma_proxy.c?at=master&amp;fileviewer=file-view-default</a><br>
      </blockquote>
      Best Regards,<br>
      <br>
      Fan<br>
    </div>
    <table class="moz-vcard-table">
      <tbody>
        <tr>
          <td valign="top"><br>
          </td>
          <td valign="top"><br>
          </td>
          <td>
            <table id="moz-vcard-properties-table">
              <tbody>
                <tr>
                  <td class="moz-vcard-title-property"><br>
                  </td>
                </tr>
                <tr>
                  <td class="moz-vcard-property"><br>
                  </td>
                </tr>
                <tr>
                  <td class="moz-vcard-property"><br>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
      </tbody>
    </table>
  </body>
</html>

--------------715AD911ADACF73EAB366CF4--

--------------9CFB9260314A02BA14F3D4B7
Content-Type: text/x-vcard; charset=utf-8;
 name="fzhang.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="fzhang.vcf"

begin:vcard
fn:Fan Zhang
n:Zhang;Fan
org:Sander Geophysics Ltd. 
email;internet:fzhang@sgl.com
title:Electronics Design Engineer
tel;work:(613)521-9626
version:2.1
end:vcard


--------------9CFB9260314A02BA14F3D4B7--
