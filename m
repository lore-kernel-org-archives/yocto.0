Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web11.4484.1613455877359939883
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 22:11:18 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=gtrJehI3;
 spf=none, err=permanent DNS error (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id af8cde42
	for <yocto@lists.yoctoproject.org>;
	Tue, 16 Feb 2021 07:11:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type; s=obsd; bh=sOBLQddTsWGGDf3yphFCO8P8hE
	GGnfnvRqrliGBSD3k=; b=gtrJehI33CQB3O5WHlS1fiKS39u88T837EjV6Gxjg+
	g9kBTHpRjo2uPjemu8YbXtAlLTiP6fAln5LkfUoB3Zj6UbKQOtC/I1PGn46kxisC
	EotKIQmlOgOunEeun1nTlYFCgsCszLGgWwuYWS029pdScklXrDBamyVjNCjxg6Yk
	fez8SHcoljK+wpIN8SDEvYVvkjB5Sr7MTVwn3UAY+P9YOMwQxxn3F6hcH3dPzM44
	0pc/lxau4esL9ir11frbNQfAmgbNcxOc/oIFaKCHk1IEGRQuxKDDLtTA8WuLARqd
	ijIlu2JCyS1obTUUiVGajRgu6RZINHezEeZQSSyv5qJQ==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type; q=dns; s=obsd; b=nq9Lo3Nbtctwz+5UqdFPvypOzsM8Qrtl
	l/4QzHhonieadHtdIXZxjz1n4medlSpnMb9i6K5t0yhL+mkOM2lVZlOSw4c5YD3U
	WE9LQEK0Z9962377UN9qQBB75h5P3y0F/Cr2o+Fuob/SklqJ3kPqKPiB043+qZ1y
	vKu4vF3lDS+KBWk0LDrC0lHGMdF6vyVgBsoSZvJvLn4/8fDWiS0ga25d/RhT/MF+
	9IlQiOReJo+lhz5fF50yCDZY946n/iixDb/uLyBrX/A0u90CDstqlE45wcrhEK0o
	KMi81U9SOUf986DAE0tlGSWdKxlOTnwXJYGxFOZqfQYlq2EpeNe8DQ==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id c2cc393b (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Tue, 16 Feb 2021 07:11:13 +0100 (CET)
Subject: Re: [yocto] Timing a recipe
To: yocto@lists.yoctoproject.org
References: <fQ55.1613419717498551221.Ltf0@lists.yoctoproject.org>
 <AM9PR09MB4642A3B12B44A1F158613D13A8889@AM9PR09MB4642.eurprd09.prod.outlook.com>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <d16e306d-528c-b748-6fb6-a7494b0ab6f8@optimcloud.com>
Date: Tue, 16 Feb 2021 13:11:08 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <AM9PR09MB4642A3B12B44A1F158613D13A8889@AM9PR09MB4642.eurprd09.prod.outlook.com>
Content-Type: multipart/alternative;
 boundary="------------6F2F1E240F200361015AD63E"
Content-Language: en-US

--------------6F2F1E240F200361015AD63E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2/16/21 3:12 AM, Konrad Weihmann wrote:
> buildstats [1] maybe? That can be inherited globally and does give 
> some neat results and insights
>
> [1] 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/buildstats.bbclass
>
how about "time bitbake recipe"  :)


> On 15.02.21 21:08, rustyhowell@gmail.com wrote:
>> Is there a way to automatically record build time of a recipe without 
>> modifying the recipe itself?  I have a recipe that is a monster, it 
>> has many git URIs and produces many packages that are coupled. It 
>> should be broken up but company deadlines have kept us from taking 
>> the time to do this. I was talking to my boss about this. He said we 
>> really needs some concrete data about how much this monster recipe is 
>> costing us before green-lighting the massive effort to split up the 
>> recipe.  I agree with him, so I would like to know how much time is 
>> spent repeatedly building this recipe.  I figure I could do this by 
>> adding do_fetch_prepend() and writing the time to a file, and then 
>> do_install_append() and writing the time to the file. So after a week 
>> or so, I would have many start/end data points to discuss.
>>
>> However, I did not want to modify the recipe itself. I was hoping to 
>> augment the recipe via local.conf. Another bbappend in a new layer 
>> would work I guess, but I was hoping there was something simpler. 
>> Thanks in advance.
>>
>>
>>
>>
>>
>
> 
>

--------------6F2F1E240F200361015AD63E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2/16/21 3:12 AM, Konrad Weihmann
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:AM9PR09MB4642A3B12B44A1F158613D13A8889@AM9PR09MB4642.eurprd09.prod.outlook.com">buildstats
      [1] maybe? That can be inherited globally and does give some neat
      results and insights
      <br>
      <br>
      [1]
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/buildstats.bbclass">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/buildstats.bbclass</a><br>
      <br>
    </blockquote>
    <p>how about "time bitbake recipe"  :)<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:AM9PR09MB4642A3B12B44A1F158613D13A8889@AM9PR09MB4642.eurprd09.prod.outlook.com">On
      15.02.21 21:08, <a class="moz-txt-link-abbreviated" href="mailto:rustyhowell@gmail.com">rustyhowell@gmail.com</a> wrote:
      <br>
      <blockquote type="cite">Is there a way to automatically record
        build time of a recipe without modifying the recipe itself?  I
        have a recipe that is a monster, it has many git URIs and
        produces many packages that are coupled. It should be broken up
        but company deadlines have kept us from taking the time to do
        this. I was talking to my boss about this. He said we really
        needs some concrete data about how much this monster recipe is
        costing us before green-lighting the massive effort to split up
        the recipe.  I agree with him, so I would like to know how much
        time is spent repeatedly building this recipe.  I figure I could
        do this by adding do_fetch_prepend() and writing the time to a
        file, and then do_install_append() and writing the time to the
        file. So after a week or so, I would have many start/end data
        points to discuss.
        <br>
        <br>
        However, I did not want to modify the recipe itself. I was
        hoping to augment the recipe via local.conf. Another bbappend in
        a new layer would work I guess, but I was hoping there was
        something simpler. Thanks in advance.
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------6F2F1E240F200361015AD63E--
