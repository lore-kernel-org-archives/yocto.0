Return-Path: <wwitzke@asgrp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0498E00EBF; Fri,  9 Mar 2018 06:18:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.170.151.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp.bestwny.com (smtp.bestwny.com [209.170.151.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32540E00DA9
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2018 06:18:25 -0800 (PST)
Received: from www.bestwny.com (localhost [127.0.0.1])
	by smtp.bestwny.com (Postfix) with ESMTP id 5DB0B10EA916;
	Fri,  9 Mar 2018 09:18:25 -0500 (EST)
Received: from smtp.bestwny.com ([127.0.0.1])
	by www.bestwny.com (www.bestwny.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with LMTP id j_UHGSbC8qa5; Fri,  9 Mar 2018 09:18:23 -0500 (EST)
X-Received: From Authenticated User
To: Andre McCurdy <armccurdy@gmail.com>
References: <423f0425-653d-37ab-098d-088466ef280d@asgrp.com>
	<CAJ86T=U=vu8nELczNnKnPZPZcXGn842xSorxGsvDpxdt_mqzqQ@mail.gmail.com>
From: Wayne Witzke <wwitzke@asgrp.com>
Organization: Applied Sciences Group, Inc.
Message-ID: <df083f7f-672d-b167-4fa2-4730bbec749a@asgrp.com>
Date: Fri, 9 Mar 2018 09:18:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=U=vu8nELczNnKnPZPZcXGn842xSorxGsvDpxdt_mqzqQ@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How and where does yocto find lighttpd-module-fastcgi?
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
X-List-Received-Date: Fri, 09 Mar 2018 14:18:27 -0000
X-Groupsio-MsgNum: 40169
Content-Type: multipart/alternative;
	boundary="------------ACC361E6B30C06B7BF22A962"
Content-Language: en-US

--------------ACC361E6B30C06B7BF22A962
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thank you for the reply!

When I wasn't adding lighttpd-module-fastcgi, it definitely was not 
including it in the build. I have the lighttpd.conf file set up use 
mod_fastcgi, and without lighttpd-module-fastcgi in my local.conf file, 
lighttpd would fail to start on the embedded build, complaining that it 
could not find the fastcgi module. In fact, the same thing happens with 
php-cgi. I can't find anyplace in any of the layers that I'm using that 
actually references php-cgi as a package or option, but unless I add it 
to local.conf using EXTRA_CORE_IMAGES_INSTALL, it doesn't get included 
in the build.

I would have assumed exactly what you are saying, if I hadn't seen 
lighttpd fail to start before adding lighttpd-module-fastcgi, and then, 
with no other changes, start correctly (finding the module) after adding 
lighttpd-module-fastcgi.

Wayne


On 03/08/2018 06:13 PM, Andre McCurdy wrote:
> On Thu, Mar 8, 2018 at 1:52 PM, Wayne Witzke <wwitzke@asgrp.com> wrote:
>> However, now I am attempting to determine if mod_openssl is installed on my
>> server, and using "CORE_EXTRA_IMAGES_INSTALL += 'lighttpd-module-openssl'"
>> to simply add it does NOT magically work like it did with
>> lighttpd-module-fastcgi. My original guess was that adding
>> "CORE_EXTRA_IMAGES_INSTALL += 'lighttpd-module-fastcgi'" caused a
>> configuration option to be matched in the lighttpd.bb file so that the
>> appropriate build option was used when building lighttpd.
> No, that's not how it works. A very key point to understand with OE is
> that options associated with one recipe can never affect the build of
> another recipe (in this case, the image recipe can't affect the build
> of the lighttpd recipe).
>
> If adding lighttpd-module-fastcgi to your image worked, it's because
> the lighttpd recipe was already creating that package.
>
>> However, fastcgi
>> doesn't actually show up in that file at all, and openssl does, so that
>> clearly isn't the option . . . furthermore, mod_fastcgi doesn't appear in
>> *any* of the layers I'm using to build, except in the lighttpd.conf portion
>> of the recipe-extended/lighttpd directory structure.
> If lighttpd doesn't have a configure option to control building of the
> fastcgi module, then there won't be a PACKAGECONFIG option for it in
> the recipe - it will just always be built.
>
> (Even if lighttpd does have a configure option for the fastcgi module,
> there's no guarantee that the recipe will allow it to be controlled -
> it's common for PACKAGECONFIG options in recipes to only reflect the
> configure options which people care about the most).
>
>> So, my question is, how does bitbake know what to do when I add
>> lighttpd-module-fastcgi,
> The build for lighttpd isn't affected by whether or not you add
> lighttpd-module-fastcgi to your image.
>
> ie running "bitbake lighttpd", should always result in a package for
> lighttpd-module-fastcgi being placed in tmp/deploy/ipk/i586/ (or
> whatever your packaging format / architecture combination is). It
> doesn't matter what image you may choose to build later, or what
> packages you choose to include in it.
>
>> and where in the world does it find the source for
>> mod_fastcgi?
> The source which gets compiled into lighttpd-module-fastcgi must be
> coming from lighttpd.
>
>> Thank you in advance for your help :)
>>
>> Wayne
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
ASG Logo

Wayne Witzke
Staff Engineer
Applied Sciences Group, Inc.
4455 Genesee St., Suite 103
Buffalo, NY 14225
716-626-5100 x306
www.asgrp.com

*Connect with ASG*
LinkedIn 
<https://www.linkedin.com/company/99150?trk=tyah&trkInfo=clickedVertical%3Acompany%2Cidx%3A1-1-1%2CtarId%3A1427119746545%2Ctas%3Aapplied+sciences+group> 
| Twitter <https://twitter.com/AppliedSciGrp> | Facebook 
<https://www.facebook.com/applied.sciences.group> | Google+ 
<https://plus.google.com/u/0/b/112847765558045826229/+AppliedSciencesGroupIncBuffalo/posts> 
| YouTube <https://www.youtube.com/user/asgrp4455>

Our Mission: To Integrate Software Solutions With the People Who Use Them.

--------------ACC361E6B30C06B7BF22A962
Content-Type: multipart/related;
 boundary="------------1AB9E9154CB554E815B07D83"

--------------1AB9E9154CB554E815B07D83
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Thank you for the reply!</p>
    <p>When I wasn't adding lighttpd-module-fastcgi, it definitely was
      not including it in the build. I have the lighttpd.conf file set
      up use mod_fastcgi, and without lighttpd-module-fastcgi in my
      local.conf file, lighttpd would fail to start on the embedded
      build, complaining that it could not find the fastcgi module. In
      fact, the same thing happens with php-cgi. I can't find anyplace
      in any of the layers that I'm using that actually references
      php-cgi as a package or option, but unless I add it to local.conf
      using EXTRA_CORE_IMAGES_INSTALL, it doesn't get included in the
      build.</p>
    <p>I would have assumed exactly what you are saying, if I hadn't
      seen lighttpd fail to start before adding lighttpd-module-fastcgi,
      and then, with no other changes, start correctly (finding the
      module) after adding lighttpd-module-fastcgi.</p>
    <p>Wayne<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 03/08/2018 06:13 PM, Andre McCurdy
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJ86T=U=vu8nELczNnKnPZPZcXGn842xSorxGsvDpxdt_mqzqQ@mail.gmail.com">
      <pre wrap="">On Thu, Mar 8, 2018 at 1:52 PM, Wayne Witzke <a class="moz-txt-link-rfc2396E" href="mailto:wwitzke@asgrp.com">&lt;wwitzke@asgrp.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">
However, now I am attempting to determine if mod_openssl is installed on my
server, and using "CORE_EXTRA_IMAGES_INSTALL += 'lighttpd-module-openssl'"
to simply add it does NOT magically work like it did with
lighttpd-module-fastcgi. My original guess was that adding
"CORE_EXTRA_IMAGES_INSTALL += 'lighttpd-module-fastcgi'" caused a
configuration option to be matched in the lighttpd.bb file so that the
appropriate build option was used when building lighttpd.
</pre>
      </blockquote>
      <pre wrap="">
No, that's not how it works. A very key point to understand with OE is
that options associated with one recipe can never affect the build of
another recipe (in this case, the image recipe can't affect the build
of the lighttpd recipe).

If adding lighttpd-module-fastcgi to your image worked, it's because
the lighttpd recipe was already creating that package.

</pre>
      <blockquote type="cite">
        <pre wrap="">However, fastcgi
doesn't actually show up in that file at all, and openssl does, so that
clearly isn't the option . . . furthermore, mod_fastcgi doesn't appear in
*any* of the layers I'm using to build, except in the lighttpd.conf portion
of the recipe-extended/lighttpd directory structure.
</pre>
      </blockquote>
      <pre wrap="">
If lighttpd doesn't have a configure option to control building of the
fastcgi module, then there won't be a PACKAGECONFIG option for it in
the recipe - it will just always be built.

(Even if lighttpd does have a configure option for the fastcgi module,
there's no guarantee that the recipe will allow it to be controlled -
it's common for PACKAGECONFIG options in recipes to only reflect the
configure options which people care about the most).

</pre>
      <blockquote type="cite">
        <pre wrap="">So, my question is, how does bitbake know what to do when I add
lighttpd-module-fastcgi,
</pre>
      </blockquote>
      <pre wrap="">
The build for lighttpd isn't affected by whether or not you add
lighttpd-module-fastcgi to your image.

ie running "bitbake lighttpd", should always result in a package for
lighttpd-module-fastcgi being placed in tmp/deploy/ipk/i586/ (or
whatever your packaging format / architecture combination is). It
doesn't matter what image you may choose to build later, or what
packages you choose to include in it.

</pre>
      <blockquote type="cite">
        <pre wrap="">and where in the world does it find the source for
mod_fastcgi?
</pre>
      </blockquote>
      <pre wrap="">
The source which gets compiled into lighttpd-module-fastcgi must be
coming from lighttpd.

</pre>
      <blockquote type="cite">
        <pre wrap="">Thank you in advance for your help :)

Wayne
--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
      <pre wrap="">
</pre>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title></title>
      <div class="moz-signature"><img moz-do-not-send="false"
          src="cid:part1.8305B8FB.B58D404D@asgrp.com" alt="ASG Logo"
          height="83" width="145"><br>
        <br>
        Wayne Witzke<br>
        Staff Engineer<br>
        Applied Sciences Group, Inc.<br>
        4455 Genesee St., Suite 103<br>
        Buffalo, NY 14225<br>
        716-626-5100 x306<br>
        <a class="moz-txt-link-abbreviated" href="http://www.asgrp.com">www.asgrp.com</a><br>
        <br>
        <b>Connect with ASG</b><br>
        <a
href="https://www.linkedin.com/company/99150?trk=tyah&amp;trkInfo=clickedVertical%3Acompany%2Cidx%3A1-1-1%2CtarId%3A1427119746545%2Ctas%3Aapplied+sciences+group">LinkedIn</a>
        | <a href="https://twitter.com/AppliedSciGrp">Twitter</a> | <a
          href="https://www.facebook.com/applied.sciences.group">Facebook</a>
        | <a
href="https://plus.google.com/u/0/b/112847765558045826229/+AppliedSciencesGroupIncBuffalo/posts">Google+</a>
        | <a href="https://www.youtube.com/user/asgrp4455">YouTube</a><br>
        <br>
        Our Mission: To Integrate Software Solutions With the People Who
        Use Them.<br>
      </div>
    </div>
  </body>
</html>

--------------1AB9E9154CB554E815B07D83
Content-Type: image/png;
 name="ASG-icon-no-shadow.png"
Content-Transfer-Encoding: base64
Content-ID: <part1.8305B8FB.B58D404D@asgrp.com>
Content-Disposition: inline;
 filename="ASG-icon-no-shadow.png"

iVBORw0KGgoAAAANSUhEUgAAAJEAAABTCAYAAACf+OWcAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAA2BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0
MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVz
b3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1N
Ok9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo2NjAwMkU4QkRFQkZFNzExOEE4NURFOUI3QzVB
MUY3OSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpGOTUyOURCNkU2NUUxMUU3ODY5RDk4QkQ0
MkY3NTA5RSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpGOTUyOURCNUU2NUUxMUU3ODY5RDk4
QkQ0MkY3NTA5RSIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBJbGx1c3RyYXRvciBDUzUuMSI+IDx4
bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjI1ODMxN0I3NUVFNkU3
MTFCRUE3ODREREU3ODJBQkVCIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjI1ODMxN0I3NUVF
NkU3MTFCRUE3ODREREU3ODJBQkVCIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwv
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
iXCgxv8FGAANCW5Yu/JTFAAAAABJRU5ErkJggg==

--------------1AB9E9154CB554E815B07D83--

--------------ACC361E6B30C06B7BF22A962--
