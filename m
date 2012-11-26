Return-Path: <Aws.Ismail@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E341FE00348
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 13:28:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qAQLSqxZ026674
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Nov 2012 13:28:52 -0800 (PST)
Received: from [128.224.147.212] (128.224.147.212) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.318.4;
	Mon, 26 Nov 2012 13:28:52 -0800
Message-ID: <50B3DE4B.9040306@windriver.com>
Date: Mon, 26 Nov 2012 16:25:31 -0500
From: Aws Ismail <aws.ismail@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Eren_T=FCrkay?= <eren@hambedded.org>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
In-Reply-To: <20121126190407.GA69689@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: aws.ismail@windriver.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Nov 2012 21:28:56 -0000
Content-Type: multipart/alternative;
	boundary="------------040506010106020702000301"

--------------040506010106020702000301
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 11/26/2012 02:04 PM, Eren Türkay wrote:
> On Mon, Nov 26, 2012 at 10:47:31AM -0500, Trevor Woerner wrote:
>> I'm kinda surprised nobody jumped in on this one; either my question
>> is so silly it isn't worth anyone's time, or I'm the only one who
>> wants to add packages to an image after a full build. I know my
>> question has nothing to do with trace-cmd specifically, adding any
>> package after a full build results in the same problem.
> I don't think you are the first person who wants to add a package to image after
> the image has been built :)
>
> The obvious problem would have been leading spaces in IMAGE_INSTALL_append but
> you explicitly stated its correct. Normally, the class that's responsible for
> image creation (image.bbclass) depends on the packages defined in IMAGE_INSTALL
> so that the packages are built before the image creation begins.
>
> image.bbclass, line 9
> ---------------------
> RDEPENDS += "${IMAGE_INSTALL} ${LINGUAS_INSTALL} ${NORMAL_FEATURE_INSTALL}
> ${ROOTFS_BOOTSTRAP_INSTALL}"
>
> On irc (#oe), Eric Benard tried IMAGE_INSTALL_append = " trace-cmd" after a full
> build and reported that it built fine. I'm CCing him.
Have you also tried this?

IMAGE_INSTALL_append += "foo"

Aws\
>
> I believe that it will be better to include your <image> file and the files that
> you changed so that it will be easier to debug. Mentioning your layers,
> configuration, version of Yocto you use will also be helpful.
>
> Regards,
> Eren
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 


--------------040506010106020702000301
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/26/2012 02:04 PM, Eren T&uuml;rkay
      wrote:<br>
    </div>
    <blockquote cite="mid:20121126190407.GA69689@gmail.com" type="cite">
      <pre wrap="">On Mon, Nov 26, 2012 at 10:47:31AM -0500, Trevor Woerner wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">I'm kinda surprised nobody jumped in on this one; either my question
is so silly it isn't worth anyone's time, or I'm the only one who
wants to add packages to an image after a full build. I know my
question has nothing to do with trace-cmd specifically, adding any
package after a full build results in the same problem.
</pre>
      </blockquote>
      <pre wrap="">
I don't think you are the first person who wants to add a package to image after
the image has been built :)

The obvious problem would have been leading spaces in IMAGE_INSTALL_append but
you explicitly stated its correct. Normally, the class that's responsible for
image creation (image.bbclass) depends on the packages defined in IMAGE_INSTALL
so that the packages are built before the image creation begins.

image.bbclass, line 9
---------------------
RDEPENDS += "${IMAGE_INSTALL} ${LINGUAS_INSTALL} ${NORMAL_FEATURE_INSTALL}
${ROOTFS_BOOTSTRAP_INSTALL}"

On irc (#oe), Eric Benard tried IMAGE_INSTALL_append = " trace-cmd" after a full
build and reported that it built fine. I'm CCing him.</pre>
    </blockquote>
    Have you also tried this?<br>
    <br>
    IMAGE_INSTALL_append += "foo"<br>
    <br>
    Aws\<br>
    <blockquote cite="mid:20121126190407.GA69689@gmail.com" type="cite">
      <pre wrap="">

I believe that it will be better to include your &lt;image&gt; file and the files that
you changed so that it will be easier to debug. Mentioning your layers,
configuration, version of Yocto you use will also be helpful.

Regards,
Eren

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
    <br>
    <pre class="moz-signature" cols="72">-- 

</pre>
  </body>
</html>

--------------040506010106020702000301--
