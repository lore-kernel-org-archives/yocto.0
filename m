Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B57CAE00D11; Mon,  4 Mar 2019 17:06:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19445E00BCC
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2019 17:06:01 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x2514xST021745
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 4 Mar 2019 17:05:35 -0800
Received: from [128.224.163.141] (128.224.163.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Mon, 4 Mar 2019 17:05:29 -0800
To: Jonas Andersson <jonaskgandersson@gmail.com>, <yocto@yoctoproject.org>
References: <CAKpuFdcLgRthdgOVV+Pcue9tpB5LrSd8yCScV=BNm-MDZz7oNg@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <0ded533a-0445-11ed-42c6-74656c2d2d2d@windriver.com>
Date: Tue, 5 Mar 2019 09:15:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAKpuFdcLgRthdgOVV+Pcue9tpB5LrSd8yCScV=BNm-MDZz7oNg@mail.gmail.com>
X-Originating-IP: [128.224.163.141]
Subject: Re: Best practice dynamic service file
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
X-List-Received-Date: Tue, 05 Mar 2019 01:06:02 -0000
Content-Type: multipart/alternative;
	boundary="------------8065882AAF85BC11687E8E96"

--------------8065882AAF85BC11687E8E96
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/05/2019 05:46 AM, Jonas Andersson wrote:
> Hi,
>
> I have an systemd recipe to start an application as a service, i have 
> included an service file.
> Now I am looking for an solution to be able to set settings in the 
> service file from Yocto variables, i have found recipes that use 
> python to build files during build.
>
> What is best practice for this?
>
> /Jonas
>
>

Use placeholders like VAR_TO_SUBSTITUDE, and then use 'sed' command to 
replace it in do_install.
e.g.
sed -i -e 's/VAR_TO_SUBSTITUDE/${VAR_IN_RECIPE}/g' path/to/my.service

Best Regards,
Chen Qi

--------------8065882AAF85BC11687E8E96
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/05/2019 05:46 AM, Jonas Andersson
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAKpuFdcLgRthdgOVV+Pcue9tpB5LrSd8yCScV=BNm-MDZz7oNg@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>I have an systemd recipe to start an application as a
          service, i have included an service file.</div>
        <div>Now I am looking for an solution to be able to set settings
          in the service file from Yocto variables, i have found recipes
          that use python to build files during build.</div>
        <div><br>
        </div>
        <div>What is best practice for this?</div>
        <div><br>
        </div>
        <div>/Jonas</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    Use placeholders like VAR_TO_SUBSTITUDE, and then use 'sed' command
    to replace it in do_install.<br>
    e.g.<br>
    sed -i -e 's/VAR_TO_SUBSTITUDE/${VAR_IN_RECIPE}/g'
    path/to/my.service<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
  </body>
</html>

--------------8065882AAF85BC11687E8E96--
