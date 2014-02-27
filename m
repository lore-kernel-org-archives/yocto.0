Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19086E008FA
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 09:06:46 -0800 (PST)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 93BC5860F0;
	Thu, 27 Feb 2014 17:06:45 +0000 (UTC)
Message-ID: <530F70A5.6090109@dynamicdevices.co.uk>
Date: Thu, 27 Feb 2014 17:06:45 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<afe40f17c9ce99846e69584fe14e5083efc90207.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<B124B2C9-2644-4E26-BBD2-D465284C00FE@gmail.com>
	<530F60C9.7090204@dynamicdevices.co.uk>
	<6621EB19-F8E0-4CF6-8070-841D28363501@gmail.com>
	<530F68E7.9000507@dynamicdevices.co.uk>
	<D501F94C-E1AB-4593-92EE-57D633EE0CD5@gmail.com>
In-Reply-To: <D501F94C-E1AB-4593-92EE-57D633EE0CD5@gmail.com>
X-Enigmail-Version: 1.6
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mono] [PATCH 1/1] gtk-sharp: Updated to GTK# 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 17:06:47 -0000
Content-Type: multipart/alternative;
	boundary="------------010808080706080708070501"

--------------010808080706080708070501
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit


On 27/02/2014 17:04, Khem Raj wrote:
>
> On Feb 27, 2014, at 8:33 AM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
> wrote:
>
>>
>> On 27/02/2014 16:30, Khem Raj wrote:
>>>
>>> On Feb 27, 2014, at 7:59 AM, Alex J Lennon
>>> <ajlennon@dynamicdevices.co.uk
>>> <mailto:ajlennon@dynamicdevices.co.uk>> wrote:
>>>
>>>>
>>>> On 27/02/2014 15:50, Khem Raj wrote:
>>>> >
>>>> > On Feb 27, 2014, at 6:16 AM, Alex J Lennon
>>>> <ajlennon@dynamicdevices.co.uk> wrote:
>>>> >
>>>> >> +PR = "r1"
>>>> >> +
>>>> >
>>>> > get rid of that
>>>>
>>>> Why is that Khem?
>>>>
>>>
>>> we have automatic PR server now a days, its enabled by default. 
>>
>> OK thanks. These are on all / most of the recipes currently in
>> meta-mono, so I'll just remove all occurences of ${PR} then (?)
>
> well, whenever you upgrade thats when you will do it. if PR is larger
> than 0 but if you have PR = “r0” that you can remove now
>

Ok will do. Thanks.



--------------010808080706080708070501
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 27/02/2014 17:04, Khem Raj wrote:<br>
    </div>
    <blockquote
      cite="mid:D501F94C-E1AB-4593-92EE-57D633EE0CD5@gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <br>
      <div>
        <div>On Feb 27, 2014, at 8:33 AM, Alex J Lennon &lt;<a
            moz-do-not-send="true"
            href="mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;
          wrote:</div>
        <br class="Apple-interchange-newline">
        <blockquote type="cite">
          <meta content="text/html; charset=windows-1252"
            http-equiv="Content-Type">
          <div text="#000000" bgcolor="#FFFFFF"> <br>
            <div class="moz-cite-prefix">On 27/02/2014 16:30, Khem Raj
              wrote:<br>
            </div>
            <blockquote
              cite="mid:6621EB19-F8E0-4CF6-8070-841D28363501@gmail.com"
              type="cite">
              <meta http-equiv="Content-Type" content="text/html;
                charset=windows-1252">
              <br>
              <div>
                <div>On Feb 27, 2014, at 7:59 AM, Alex J Lennon &lt;<a
                    moz-do-not-send="true"
                    href="mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;

                  wrote:</div>
                <br class="Apple-interchange-newline">
                <blockquote type="cite">
                  <meta content="text/html; charset=windows-1252"
                    http-equiv="Content-Type">
                  <div text="#000000" bgcolor="#FFFFFF"> <br>
                    On 27/02/2014 15:50, Khem Raj wrote:<br>
                    <span style="white-space: pre;">&gt;<br>
                      &gt; On Feb 27, 2014, at 6:16 AM, Alex J Lennon <a
                        moz-do-not-send="true"
                        class="moz-txt-link-rfc2396E"
                        href="mailto:ajlennon@dynamicdevices.co.uk">&lt;ajlennon@dynamicdevices.co.uk&gt;</a>
                      wrote:<br>
                      &gt;<br>
                      &gt;&gt; +PR = "r1"<br>
                      &gt;&gt; +<br>
                      &gt;<br>
                      &gt; get rid of that</span><br>
                    <br>
                    Why is that Khem?<br>
                    <br>
                  </div>
                </blockquote>
              </div>
              <br>
              <div>we have automatic PR server now a days, its enabled
                by default. </div>
            </blockquote>
            <br>
            OK thanks. These are on all / most of the recipes currently
            in meta-mono, so I'll just remove all occurences of ${PR}
            then (?)<br>
          </div>
        </blockquote>
        <div><br>
        </div>
        <div>well, whenever you upgrade thats when you will do it. if PR
          is larger than 0 but if you have PR = “r0” that you can remove
          now</div>
        <br>
      </div>
    </blockquote>
    <br>
    Ok will do. Thanks.<br>
    <br>
    <br>
    <div class="moz-signature">
      <div class="preview"> </div>
    </div>
  </body>
</html>

--------------010808080706080708070501--
