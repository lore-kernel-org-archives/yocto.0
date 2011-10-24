Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDC3EE0137B
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 02:12:11 -0700 (PDT)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id D30F321FC1
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 08:29:33 +0100 (BST)
Message-ID: <4EA52BEF.8000100@communistcode.co.uk>
Date: Mon, 24 Oct 2011 10:12:15 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4EA529F5.4010706@communistcode.co.uk>
In-Reply-To: <4EA529F5.4010706@communistcode.co.uk>
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Mon, 24 Oct 2011 09:12:15 -0000
Content-Type: multipart/alternative;
	boundary="------------030803050900070809070003"

--------------030803050900070809070003
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 24/10/2011 10:03, Jack Mitchell wrote:
> I am trying to use the new eclipse plugin, which I have had working 
> fine for the past couple of weeks until I switched from the master 
> branch to edison.
>
> I performed a fresh build using the stable edison branch, installed 
> the new 1.1 eclipse plugin and now whenever I try to setup the Yocto 
> eclipse environment I receive the following error:
>
> Yocto Preferences Configuration Error!
> OECORE related items are not found in envrionement setup files.
> The ADT version you're using is too old.
> Please upgrade to our latest ADT Version!
>
> This pops up in a message box, not the eclipse console. I have 
> followed the ADT Setup guide to the letter and it's not playing ball - 
> could someone confirm this as working or point me towards a reason why 
> I may be getting this error?
>
> Cheers,
> Jack.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

This is a pastebin of my current environment setup file:

http://pastebin.com/4vnWPAD2

--------------030803050900070809070003
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 24/10/2011 10:03, Jack Mitchell wrote:
    <blockquote cite="mid:4EA529F5.4010706@communistcode.co.uk"
      type="cite">
      <meta http-equiv="content-type" content="text/html;
        charset=ISO-8859-1">
      I am trying to use the new eclipse plugin, which I have had
      working fine for the past couple of weeks until I switched from
      the master branch to edison.<br>
      <br>
      I performed a fresh build using the stable edison branch,
      installed the new 1.1 eclipse plugin and now whenever I try to
      setup the Yocto eclipse environment I receive the following error:<br>
      <br>
      <font face="Courier New, Courier, monospace">Yocto Preferences
        Configuration Error!<br>
        OECORE related items are not found in envrionement setup files.<br>
        The ADT version you're using is too old.<br>
        Please upgrade to our latest ADT Version!<br>
        <br>
      </font>This pops up in a message box, not the eclipse console. I
      have followed the ADT Setup guide to the letter and it's not
      playing ball - could someone confirm this as working or point me
      towards a reason why I may be getting this error?<br>
      <br>
      Cheers,<br>
      Jack.<br>
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
    This is a pastebin of my current environment setup file:<br>
    <br>
    <a class="moz-txt-link-freetext" href="http://pastebin.com/4vnWPAD2">http://pastebin.com/4vnWPAD2</a><br>
  </body>
</html>

--------------030803050900070809070003--
