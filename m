Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2129E00AFD; Wed, 21 May 2014 00:52:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 627EBE0070F
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 00:51:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s4L7pp02020120
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 21 May 2014 00:51:51 -0700 (PDT)
Received: from [128.224.162.214] (128.224.162.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.169.1;
	Wed, 21 May 2014 00:51:50 -0700
Message-ID: <537C5B12.4030007@windriver.com>
Date: Wed, 21 May 2014 15:51:46 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, Alexandru C Georgescu
	<alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>
References: <CAPhnLPC1zcDhDq51msiME4zyQq3hBx=24m016XY8J4e7_q3uiw@mail.gmail.com>
In-Reply-To: <CAPhnLPC1zcDhDq51msiME4zyQq3hBx=24m016XY8J4e7_q3uiw@mail.gmail.com>
X-Originating-IP: [128.224.162.214]
Subject: Re: Weekly build available
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
X-List-Received-Date: Wed, 21 May 2014 07:52:03 -0000
Content-Type: multipart/alternative;
	boundary="------------060907070707040509040602"

--------------060907070707040509040602
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Beth,

Seems many artifacts are not copied to the publish directory. Would you 
please check it ?

Thanks,
Yi

于 2014年05月21日 14:10, Flanagan, Elizabeth 写道:
> http://autobuilder.yoctoproject.org/pub/nightly/20140520-2
>
> bitbake     ef2bf63e56b87e19d1a9059dd2d81a9a1a537254
> eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
> eclipse-poky-kepler     1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
> meta-fsl-arm     3336ef362109eef14f9e73cdededb43caefedb2f
> meta-fsl-ppc     913fc371e9976cc95fc1b2ee2deb87efd13faafb
> meta-intel     cb0f5fbd614ec6a9052539416734ca1ab26a1892
> meta-minnow     7bdcd1140b729598bae6246a4bbc21c3950aadd8
> meta-qt3     3016129d90b7ac8517a5227d819f10ad417b5b45
> oecore     be0327b6a900be5434b6b1f08277faf2f65d5da8
> poky     8293f564685d0f587ab63a107285625dc4f98f1c
>


--------------060907070707040509040602
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi Beth,<br>
    <br>
    Seems many artifacts are not copied to the publish directory. Would 
    you please check it ? <br>
    <br>
    Thanks,<br>
    Yi<br>
    <br>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <div class="moz-cite-prefix">于 2014年05月21日 14:10, Flanagan,
      Elizabeth 写道:<br>
    </div>
    <blockquote
cite="mid:CAPhnLPC1zcDhDq51msiME4zyQq3hBx=24m016XY8J4e7_q3uiw@mail.gmail.com"
      type="cite">
      <pre wrap=""><a class="moz-txt-link-freetext" href="http://autobuilder.yoctoproject.org/pub/nightly/20140520-2">http://autobuilder.yoctoproject.org/pub/nightly/20140520-2</a>

bitbake     ef2bf63e56b87e19d1a9059dd2d81a9a1a537254
eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler     1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
meta-fsl-arm     3336ef362109eef14f9e73cdededb43caefedb2f
meta-fsl-ppc     913fc371e9976cc95fc1b2ee2deb87efd13faafb
meta-intel     cb0f5fbd614ec6a9052539416734ca1ab26a1892
meta-minnow     7bdcd1140b729598bae6246a4bbc21c3950aadd8
meta-qt3     3016129d90b7ac8517a5227d819f10ad417b5b45
oecore     be0327b6a900be5434b6b1f08277faf2f65d5da8
poky     8293f564685d0f587ab63a107285625dc4f98f1c

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------060907070707040509040602--
