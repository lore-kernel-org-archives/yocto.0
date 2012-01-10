Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C44A2E0123F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 06:48:33 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qadc16 with SMTP id c16so3362316qad.14
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 06:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=tbfp5wuyNuicWd9rD1BW3K9g10Kc0RFCCokkt1KSF7Y=;
	b=GGp9rej70IAlG5vvqx3dfjlKK8kxm/ZP4vgsf1DZCWlS/N5I8be5Xqgm18nb0AA2jw
	r/QMG2c6HshE9LFeB1iPjUnYdDHjxNgxCMNeMFxCNBubmXSCzXhriXP7DnnFw7auljYn
	vx00uapOnS2VCvU9zp0RsE/IH6RrCixtTk72w=
Received: by 10.224.175.193 with SMTP id bb1mr25163967qab.41.1326206912666;
	Tue, 10 Jan 2012 06:48:32 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	o8sm135672765qaj.0.2012.01.10.06.48.31 (version=SSLv3 cipher=OTHER);
	Tue, 10 Jan 2012 06:48:32 -0800 (PST)
Message-ID: <4F0C4FBF.6080100@gmail.com>
Date: Tue, 10 Jan 2012 09:48:31 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Christopher Larson <kergoth@gmail.com>
References: <8B3C6E23-C3B9-4CEF-A1E0-2B91F8D17EFE@gmail.com>
	<2F4E813B930D429F95E9E2DCFB2C36A2@gmail.com>
In-Reply-To: <2F4E813B930D429F95E9E2DCFB2C36A2@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: understanding what's in an image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jan 2012 14:48:34 -0000
Content-Type: multipart/alternative;
	boundary="------------010701050008060107050501"

--------------010701050008060107050501
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/09/2012 09:07 PM, Christopher Larson wrote:
> Read layer.conf in each layer. See the BBFILES variable.
> -- 
> Christopher Larson
>
> On Monday, January 9, 2012 at 5:51 PM, James Abernathy wrote:
>
>> I'm trying to understand how bitbake parses the poky directory tree a 
>> little better.
>>
>> The best I can figure all .bb files are NOT included. Just some of 
>> them are. I'm guessing that the .bb in the meta/recipe-sato named 
>> core-image-sato.bb is the one that is used to start the parsing if 
>> bitbake core-image-sato is executed.
>> I originally thought all subdirectories of a path included in BBLAYER 
>> were parsed looking for .bb files, but now I know that is not true, 
>> but not sure why.
>>
>> For example, it does not appear that webkit is included in the 
>> core-image-sato even though the recipe-sato directory includes the 
>> webkit subdirectory with it's recipe. What would be the proper way of 
>> adding the webkit to core-image-sato??
>>
>> Jim A
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>
the layer.conf in meta/conf includes and covers  all .bb files under it 
like receipe-sato, which includes web-webkit.  So does this say that the 
web-webkit get's built by bitbake, but the images does not contain 
web-webkit until you put in the IMAGE_INSTALL += "web-webit"???

Jim A



--------------010701050008060107050501
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 01/09/2012 09:07 PM, Christopher Larson wrote:
    <blockquote cite="mid:2F4E813B930D429F95E9E2DCFB2C36A2@gmail.com"
      type="cite">
      <div> Read layer.conf in each layer. See the BBFILES variable.</div>
      <div>
        <div>-- </div>
        <div>Christopher Larson</div>
        <div><br>
        </div>
      </div>
      <p style="color: #A0A0A8;">On Monday, January 9, 2012 at 5:51 PM,
        James Abernathy wrote:</p>
      <blockquote type="cite"
style="border-left-style:solid;border-width:1px;margin-left:0px;padding-left:10px;">
        <span>
          <div>
            <div>
              <div>I'm trying to understand how bitbake parses the poky
                directory tree a little better. </div>
              <div><br>
              </div>
              <div>The best I can figure all .bb files are NOT included.
                Just some of them are. I'm guessing that the .bb in the
                meta/recipe-sato named core-image-sato.bb is the one
                that is used to start the parsing if bitbake
                core-image-sato is executed.</div>
              <div>I originally thought all subdirectories of a path
                included in BBLAYER were parsed looking for .bb files,
                but now I know that is not true, but not sure why.</div>
              <div><br>
              </div>
              <div>For example, it does not appear that webkit is
                included in the core-image-sato even though the
                recipe-sato directory includes the webkit subdirectory
                with it's recipe. What would be the proper way of adding
                the webkit to core-image-sato??</div>
              <div><br>
              </div>
              <div>Jim A</div>
              <div><br>
              </div>
              <div>_______________________________________________</div>
              <div>yocto mailing list</div>
              <div><a moz-do-not-send="true"
                  href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a></div>
              <div><a moz-do-not-send="true"
                  href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></div>
            </div>
          </div>
        </span> </blockquote>
      <div> <br>
      </div>
    </blockquote>
    the layer.conf in meta/conf includes and covers  all .bb files under
    it like receipe-sato, which includes web-webkit.  So does this say
    that the web-webkit get's built by bitbake, but the images does not
    contain web-webkit until you put in the IMAGE_INSTALL +=
    "web-webit"???<br>
    <br>
    Jim A<br>
    <br>
    <br>
  </body>
</html>

--------------010701050008060107050501--
