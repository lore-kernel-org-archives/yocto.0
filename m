Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86810E00DAF; Thu, 24 Oct 2019 18:22:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B303E00D6A
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 18:22:58 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id z22so814751qtq.11
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 18:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=2Lg/abVz18CgWYMeZq4Lwo758YfsBxVnnIRmH4V3ARI=;
	b=Jaok643q+qZDFzC0jdqMz0r/1H4V4dhhOovULs00qacpQC82k1Kv5LOm2n4IuRmuba
	8I8wRjzuXawp6caP+QKsOclaJAdEPCbQvqKLQA9+JEC6w9TQ6IENpNVHncv7L5gBcjav
	vj5KZqTzcHQedDOSYF6ccWMnqVESrTqGVDXA1lldYHGC1JZ7t2rT2kTHCoUGfPYJMUg2
	BAAcJvkT/T90k4wezEsZVpSLFVyBdJxBO1y3gJ1Ju47R4YZ2ucy4QN+rvt/Hlqo/KxEI
	zVzfz46lM4Z2tLUzDBHpjHWPqF++VT61E066JblEIA+3BhlZjnNum+2KgJ5I0DOFlxsi
	8irw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=2Lg/abVz18CgWYMeZq4Lwo758YfsBxVnnIRmH4V3ARI=;
	b=XYBD7/D4zGuZoNv5I9/VpsptO68wYcOcuiCc3m8hh0xAj5SXf5UpT2/SMDG1FIHLbs
	0ncCJg6I+sHUDTeFwBw9m5AP/zBXvFiCRvkcti/oeWtb1fr72/JIAH10YwXEagO9Ebg5
	9hnhMIFsbcL6ncewK1Dh9oCeturFBjsTuptyBABlXYJoIEMjG0IK3jTleOF/8LpvhQAp
	AUa9VfjYLol6weFpE4F6ZY5OSbzzuLcgmRcZw74HQI8SwbrUFiJchTptWu8hyrrPW0Nv
	maFWp/m4wQnt82L68Oc1JW5EGleVIe3tcjw9In80bOIkCgFG8NISXA9/Osnlb9kmMOUG
	5kpQ==
X-Gm-Message-State: APjAAAW6tH/3INKXf+0hXLmTF0Aia2atXLmUU5mx+lw/mYHYKV4WqrAU
	Qp+3wgDDZ7iOhWZ2yJPLcKyl/i7mO54=
X-Google-Smtp-Source: APXvYqyvaiGjx4vfgdZ5FszfMjJRXC//ThTCY/roBMkikcHbr1xIXbSwVjNrp4NMn922WEIiccCk1A==
X-Received: by 2002:ac8:108e:: with SMTP id a14mr645642qtj.171.1571966577032; 
	Thu, 24 Oct 2019 18:22:57 -0700 (PDT)
Received: from [192.168.1.102] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230])
	by smtp.gmail.com with ESMTPSA id z6sm391620qkf.125.2019.10.24.18.22.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 24 Oct 2019 18:22:55 -0700 (PDT)
To: Rich Persaud <persaur@gmail.com>
References: <be870924-57c7-3bd9-3263-b0008f7060af@gmail.com>
	<C777B075-4386-4520-8A10-27AB7B4A09FB@gmail.com>
From: Nicholas Krause <xerofoify@gmail.com>
Message-ID: <b576520f-8384-f524-cae4-1ac7ca9c33f5@gmail.com>
Date: Thu, 24 Oct 2019 21:22:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <C777B075-4386-4520-8A10-27AB7B4A09FB@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [Openembedded-architecture] Yocto Project LTS Proposal/Discussion
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
X-List-Received-Date: Fri, 25 Oct 2019 01:22:59 -0000
Content-Type: multipart/alternative;
	boundary="------------3F19EABC5F0C5BC609957E50"
Content-Language: tl

--------------3F19EABC5F0C5BC609957E50
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 10/24/19 8:15 PM, Rich Persaud wrote:
> This came directly to me -- did you mean to copy the list?
>
> Rich

Sorry misclick on my end Rich.

Nick

>
>> On Oct 24, 2019, at 20:13, Nicholas Krause <xerofoify@gmail.com> wrote:
>>
>> ﻿
>>
>>
>> On 10/24/19 8:08 PM, Rich Persaud wrote:
>>> /(adding the automated-testing list)/
>>>
>>> On Oct 24, 2019, at 18:52, Richard Purdie 
>>> <richard.purdie@linuxfoundation.org> wrote:
>>>>
>>>> ﻿I'm posting this to openembedded-architecture since it probably is the
>>>> best place for discussions about OE/Yocto planning.
>>>>
>>>> The Yocto Project TSC believes one of the things needed for YP and for
>>>> OE is more information being pulled together about how an LTS release
>>>> could work. The document linked to below is the information it was able
>>>> to collate together on the subject. Its the result of some long
>>>> discussions by the TSC.
>>>> ...
>>>> The key thing needed to make this happen is a resource commitment to
>>>> it. Without such a commitment it is simply not feasible.
>>>
>>> Vendors who provide commercial support for OE/Yocto-based products 
>>> may already be investing downstream resources for equivalent "LTS" 
>>> support.  May be useful for the document to show the financial 
>>> benefits of shifting a percentage of downstream LTS validation 
>>> resources to upstream Yocto LTS.
>>>
>>>> There may be
>>>> new companies willing to join the project in order to make it happen,
>>>> if so we should talk further.
>>>>
>>>> The document:
>>>>
>>>> https://docs.google.com/document/d/1AwAFDf52f_FoXksbHEVUMlu4hpcI0JMGVG-Kj_sUkyc/
>>>
>>> > The project components to be covered would need to match those 
>>> included in our standard release process and should be clearly 
>>> defined. Those components would be:
>>> > Bitbake
>>> > OE-Core
>>> > Meta-yocto
>>> > yocto-docs
>>> ...
>>> > For simplicity, it is also proposed that only automated testing be 
>>> used for testing the LTS and that any current manual QA is not 
>>> performed.
>>> ...
>>> > Only run virtualized tests
>>> > Only support one host distro, an Ubuntu LTS as it has right lifespan
>>>
>>> When the first Yocto LTS release is available, could that become the 
>>> host distro for automated testing?  That would provide Yocto 
>>> automated testing with supply chain integrity benefits from Yocto. 
>>>  If we take that path, with automated testing based on 
>>> virtualization, could we add meta-virtualization to the list of 
>>> Yocto LTS release components?
>>>
>>> Yocto-on-Yocto automated testing could reduce risks [1] that impact 
>>> software supply chains. A potential topic for the ATS event [2] next 
>>> week.
>>>
>>> Rich
>>
>> One concern on the toolchain or lanuage side  is what happens if 
>> something like a new C++ release happens or similar. Do you plan on 
>> allowing toolchain migration to using the newer version of a given 
>> lanuage.
>>
>> May be worth considering,
>>
>> Nick
>>
>>>
>>> [1] https://www.platformsecuritysummit.com/2019/speaker/sherman/
>>>
>>> [2] https://elinux.org/Automated_Testing_Summit_2019
>>>
>>>
>>> _______________________________________________
>>> Openembedded-architecture mailing list
>>> Openembedded-architecture@lists.openembedded.org
>>> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture

--------------3F19EABC5F0C5BC609957E50
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10/24/19 8:15 PM, Rich Persaud
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:C777B075-4386-4520-8A10-27AB7B4A09FB@gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">This came directly to me -- did you mean to copy
        the list?</div>
      <div dir="ltr"><br>
      </div>
      <div dir="ltr">Rich</div>
    </blockquote>
    <p>Sorry misclick on my end Rich.</p>
    <p>Nick<br>
    </p>
    <blockquote type="cite"
      cite="mid:C777B075-4386-4520-8A10-27AB7B4A09FB@gmail.com">
      <div dir="ltr"><br>
        <blockquote type="cite">On Oct 24, 2019, at 20:13, Nicholas
          Krause <a class="moz-txt-link-rfc2396E" href="mailto:xerofoify@gmail.com">&lt;xerofoify@gmail.com&gt;</a> wrote:<br>
          <br>
        </blockquote>
      </div>
      <blockquote type="cite">
        <div dir="ltr">﻿
          <meta http-equiv="Content-Type" content="text/html;
            charset=UTF-8">
          <p><br>
          </p>
          <div class="moz-cite-prefix">On 10/24/19 8:08 PM, Rich Persaud
            wrote:<br>
          </div>
          <blockquote type="cite"
            cite="mid:47389081-1411-4E94-A418-69FA2A6CB944@gmail.com">
            <meta http-equiv="content-type" content="text/html;
              charset=UTF-8">
            <div dir="ltr"><i>(adding the automated-testing list)</i></div>
            <div dir="ltr"><br>
            </div>
            <div dir="ltr">On Oct 24, 2019, at 18:52, Richard Purdie <a
                class="moz-txt-link-rfc2396E"
                href="mailto:richard.purdie@linuxfoundation.org"
                moz-do-not-send="true">&lt;richard.purdie@linuxfoundation.org&gt;</a>
              wrote:
              <div dir="ltr">
                <blockquote type="cite"><br>
                </blockquote>
              </div>
              <blockquote type="cite">
                <div dir="ltr">﻿<span>I'm posting this to
                    openembedded-architecture since it probably is the</span><br>
                  <span>best place for discussions about OE/Yocto
                    planning.</span><br>
                  <span></span><br>
                  <span>The Yocto Project TSC believes one of the things
                    needed for YP and for</span><br>
                  <span>OE is more information being pulled together
                    about how an LTS release</span><br>
                  <span>could work. The document linked to below is the
                    information it was able</span><br>
                  <span>to collate together on the subject. Its the
                    result of some long</span><br>
                  <span>discussions by the TSC.</span><br>
                  ...<br>
                  <span>The key thing needed to make this happen is a
                    resource commitment to</span><br>
                  <span>it. Without such a commitment it is simply not
                    feasible. </span></div>
              </blockquote>
              <div><br>
              </div>
              <div>Vendors who provide commercial support for
                OE/Yocto-based products may already be investing
                downstream resources for equivalent "LTS" support.  May
                be useful for the document to show the financial
                benefits of shifting a percentage of downstream LTS
                validation resources to upstream Yocto LTS.</div>
              <div><br>
              </div>
              <blockquote type="cite">
                <div dir="ltr"><span>There may be</span><br>
                  <span>new companies willing to join the project in
                    order to make it happen,</span><br>
                  <span>if so we should talk further.</span><br>
                  <span></span><br>
                  <span>The document:</span><br>
                  <span></span><br>
                  <span><a class="moz-txt-link-freetext"
href="https://docs.google.com/document/d/1AwAFDf52f_FoXksbHEVUMlu4hpcI0JMGVG-Kj_sUkyc/"
                      moz-do-not-send="true">https://docs.google.com/document/d/1AwAFDf52f_FoXksbHEVUMlu4hpcI0JMGVG-Kj_sUkyc/</a></span><br>
                </div>
              </blockquote>
              <div><br>
              </div>
              <div>&gt; The project components to be covered would need
                to match those included in our standard release process
                and should be clearly defined. Those components would
                be:</div>
              <div>
                <div>&gt; Bitbake</div>
                <div>&gt; OE-Core</div>
                <div>&gt; Meta-yocto</div>
                <div>&gt; yocto-docs</div>
              </div>
              <div>...</div>
              <div>&gt; For simplicity, it is also proposed that only
                automated testing be used for testing the LTS and that
                any current manual QA is not performed.</div>
              <div>...</div>
              <div>&gt; Only run virtualized tests</div>
              <div>&gt; Only support one host distro, an Ubuntu LTS as
                it has right lifespan</div>
              <div><br>
              </div>
              <div>When the first Yocto LTS release is available, could
                that become the host distro for automated testing?  That
                would provide Yocto automated testing with supply chain
                integrity benefits from Yocto.  If we take that path,
                with automated testing based on virtualization, could we
                add meta-virtualization to the list of Yocto LTS release
                components?</div>
              <div><br>
              </div>
              <div>Yocto-on-Yocto automated testing could reduce risks
                [1] that impact software supply chains. A potential
                topic for the ATS event [2] next week.</div>
              <div><br>
              </div>
              <div>Rich</div>
            </div>
          </blockquote>
          <p>One concern on the toolchain or lanuage side  is what
            happens if something like a new C++ release happens or
            similar. Do you plan on allowing toolchain migration to
            using the newer version of a given lanuage. <br>
          </p>
          <p>May be worth considering,</p>
          <p>Nick<br>
          </p>
          <blockquote type="cite"
            cite="mid:47389081-1411-4E94-A418-69FA2A6CB944@gmail.com">
            <div dir="ltr">
              <div><br>
              </div>
              <div>[1] <a
                  href="https://www.platformsecuritysummit.com/2019/speaker/sherman/"
                  moz-do-not-send="true">https://www.platformsecuritysummit.com/2019/speaker/sherman/</a></div>
              <div><br>
              </div>
              <div>[2] <a
                  href="https://elinux.org/Automated_Testing_Summit_2019"
                  moz-do-not-send="true">https://elinux.org/Automated_Testing_Summit_2019</a></div>
              <div><br>
              </div>
            </div>
            <br>
            <fieldset class="mimeAttachmentHeader"></fieldset>
            <pre class="moz-quote-pre" wrap="">_______________________________________________
Openembedded-architecture mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Openembedded-architecture@lists.openembedded.org" moz-do-not-send="true">Openembedded-architecture@lists.openembedded.org</a>
<a class="moz-txt-link-freetext" href="http://lists.openembedded.org/mailman/listinfo/openembedded-architecture" moz-do-not-send="true">http://lists.openembedded.org/mailman/listinfo/openembedded-architecture</a>
</pre>
          </blockquote>
        </div>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------3F19EABC5F0C5BC609957E50--
