Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C22E007D5
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 10:30:01 -0800 (PST)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 132C0860F0;
	Thu, 27 Feb 2014 18:30:00 +0000 (UTC)
Message-ID: <530F8427.80705@dynamicdevices.co.uk>
Date: Thu, 27 Feb 2014 18:29:59 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<1600678.J4ox3s7bCg@peggleto-mobl5.ger.corp.intel.com>
	<530F76AD.9000608@dynamicdevices.co.uk>
	<1535634.dXkxAnYu3c@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1535634.dXkxAnYu3c@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 27 Feb 2014 18:30:04 -0000
X-Groupsio-MsgNum: 18250
Content-Type: multipart/alternative;
	boundary="------------000800090901060304080903"

--------------000800090901060304080903
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 27/02/2014 18:18, Paul Eggleton wrote:
> On Thursday 27 February 2014 17:32:29 Alex J Lennon wrote:
>> On 27/02/2014 17:09, Paul Eggleton wrote:
>>> On Thursday 27 February 2014 08:30:10 Khem Raj wrote:
>>>> On Feb 27, 2014, at 7:59 AM, Alex J Lennon
>>>> <ajlennon@dynamicdevices.co.uk>
>>>>
>>>> wrote:
>>>>> On 27/02/2014 15:50, Khem Raj wrote:
>>>>>       > On Feb 27, 2014, at 6:16 AM, Alex J Lennon
>>>>>       
>>>>>       <ajlennon@dynamicdevices.co.uk> wrote:
>>>>>       >> +PR = "r1"
>>>>>       >> 
>>>>>       >> +
>>>>>       > 
>>>>>       > get rid of that
>>>>>
>>>>> Why is that Khem?
>>>> we have automatic PR server now a days, its enabled by default.
>>> FWIW, I don't think it's enabled by default, at least not in OE-Core/Poky.
>>> The point still stands though, it's the way PR should be managed rather
>>> than manual bumping.
>> <googling/> Are we talking about the "network based PR service"?
> Yes, see:
>
>  http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#working-with-a-pr-service
>  

OK thanks for this, it's very useful.


>> Is this a single globally available nework service or a service that's
>> intended to be running local to a specific build farm?
> Specific build farm; it may be made externally accessible if necessary
> however.
>
>> My reading of the wiki page seems to imply it's intended to be local to
>> a build farm, or system, rather than globally unique?
> PR values needn't match up between different distros. The point is they should
> get increased when a material change to the recipe's output happens; and this
> can happen for example when:
>
> * A class that the recipe inherits is changed 
>
> * A dependency of the recipe that influences how the recipe is built gets
> changed
>
> * Some global configuration changed that affects how the recipe is built
> e.g. DISTRO_FEATURES
>
> * A bbappend is added or removed
>
> In all of these cases the recipe itself does not get changed at all - prior to
> the PR server we had to remember to manually bump PR in the affected recipes,
> or (more often) we'd forget to handle it properly altogether. With the PR
> server, PR bumps happen automatically in response to signatures changing,
> which is about as accurate an indicator as we can get as far as determining
> whether the output has changed, and certainly much less prone to mistakes.

OK so I can't download the source code to a distribution and built
identical, identically
versioned packages to theirs? With something like RPM wouldn't I expect
to be able to
download an RPM source package and build an identical, versioned RPM
from it?

As a minimum my package revision naming will be different from the
upstream distro
presumably?

Taking a slightly different tack, if I upgrade a recipe PV from 1.0.0 to
2.0.0 to correspond
to the upstream source versioning, and at that time I remove PR and
build some packages.

Then a month later I realise I need something extra added to the
configuration options,
which gives me a different output, what do I change to make sure the new
package is
versioned differently from the old package? (i.e. presumably if the
network service is
running it will handle it for me, but if it's not running then new
package will be versioned
identically to my old package?)

Thanks, Alex

>> So if I'm releasing packages to production this now becomes a critical
>> part of my infrastructure as I'll lose all my package revisions if
>> something goes wrong with it?
> Yes. Luckily it's not a particularly complicated piece of software; the only
> extra thing you need to preserve is the sqlite database that contains the
> hashes and corresponding PR values.
>  
>> And my packages will have different revisions from somebody elses's
>> packages when they are running their own network based PR service?
> Yes. If bbappends were involved all bets were off prior to the PR service
> anyway since they were supposed to modify PR.
>  
>> I suppose the other question is, if I release a package of revision X,
>> then another which is up-rev'd' to Y as I made a change to the recipe
>> and so the NBPRS up-revs, then somebody comes back to me and tells me
>> they are having a problem with Xm then how do I link that rev X to the
>> specific commit that went to build it so I can audit ?
> The PR server doesn't track this - however, all of this information does go
> into buildhistory if you enable that.

Must look at that, yes.

>> I haven't enabled this here, so does that mean all my package revisions
>> will be r0 as I remove the PR variables from recipes ?
> We're not talking about dropping all PR values in existing recipes, we're
> talking about dropping them on upgrade (i.e. when PV changes), where
> previously we'd have done that anyway or set them to "r0".
>
> Cheers,
> Paul
>

-- 

Dynamic Devices Ltd <http://www.dynamicdevices.co.uk/>

Alex J Lennon / Director
1 Queensway, Liverpool L22 4RA

mobile: +44 (0)7956 668178

Linkedin <http://www.linkedin.com/in/alexjlennon> Skype
<skype:alexjlennon?add>

This e-mail message may contain confidential or legally privileged
information and is intended only for the use of the intended
recipient(s). Any unauthorized disclosure, dissemination, distribution,
copying or the taking of any action in reliance on the information
herein is prohibited. E-mails are not secure and cannot be guaranteed to
be error free as they can be intercepted, amended, or contain viruses.
Anyone who communicates with us by e-mail is deemed to have accepted
these risks. Company Name is not responsible for errors or omissions in
this message and denies any responsibility for any damage arising from
the use of e-mail. Any opinion and other statement contained in this
message and any attachment are solely those of the author and do not
necessarily represent those of the company.


--------------000800090901060304080903
Content-Type: multipart/related;
 boundary="------------030108050406020000030800"

--------------030108050406020000030800
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 27/02/2014 18:18, Paul Eggleton
      wrote:<br>
    </div>
    <blockquote
      cite="mid:1535634.dXkxAnYu3c@peggleto-mobl5.ger.corp.intel.com"
      type="cite">
      <pre wrap="">On Thursday 27 February 2014 17:32:29 Alex J Lennon wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">On 27/02/2014 17:09, Paul Eggleton wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">On Thursday 27 February 2014 08:30:10 Khem Raj wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">On Feb 27, 2014, at 7:59 AM, Alex J Lennon
<a class="moz-txt-link-rfc2396E" href="mailto:ajlennon@dynamicdevices.co.uk">&lt;ajlennon@dynamicdevices.co.uk&gt;</a>

wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="">On 27/02/2014 15:50, Khem Raj wrote:
      &gt; On Feb 27, 2014, at 6:16 AM, Alex J Lennon
      
      <a class="moz-txt-link-rfc2396E" href="mailto:ajlennon@dynamicdevices.co.uk">&lt;ajlennon@dynamicdevices.co.uk&gt;</a> wrote:
      &gt;&gt; +PR = "r1"
      &gt;&gt; 
      &gt;&gt; +
      &gt; 
      &gt; get rid of that

Why is that Khem?
</pre>
            </blockquote>
            <pre wrap="">
we have automatic PR server now a days, its enabled by default.
</pre>
          </blockquote>
          <pre wrap="">
FWIW, I don't think it's enabled by default, at least not in OE-Core/Poky.
The point still stands though, it's the way PR should be managed rather
than manual bumping.
</pre>
        </blockquote>
        <pre wrap="">
&lt;googling/&gt; Are we talking about the "network based PR service"?
</pre>
      </blockquote>
    </blockquote>
    <blockquote
      cite="mid:1535634.dXkxAnYu3c@peggleto-mobl5.ger.corp.intel.com"
      type="cite">
      <pre wrap="">
Yes, see:

 <a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#working-with-a-pr-service">http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#working-with-a-pr-service</a>
 </pre>
    </blockquote>
    <br>
    OK thanks for this, it's very useful.<br>
    <br>
    <br>
    <blockquote
      cite="mid:1535634.dXkxAnYu3c@peggleto-mobl5.ger.corp.intel.com"
      type="cite">
      <pre wrap="">
</pre>
      <blockquote type="cite">
        <pre wrap="">Is this a single globally available nework service or a service that's
intended to be running local to a specific build farm?
</pre>
      </blockquote>
      <pre wrap="">
Specific build farm; it may be made externally accessible if necessary
however.

</pre>
      <blockquote type="cite">
        <pre wrap="">My reading of the wiki page seems to imply it's intended to be local to
a build farm, or system, rather than globally unique?
</pre>
      </blockquote>
      <pre wrap="">
PR values needn't match up between different distros. The point is they should
get increased when a material change to the recipe's output happens; and this
can happen for example when:

* A class that the recipe inherits is changed 

* A dependency of the recipe that influences how the recipe is built gets
changed

* Some global configuration changed that affects how the recipe is built
e.g. DISTRO_FEATURES

* A bbappend is added or removed

In all of these cases the recipe itself does not get changed at all - prior to
the PR server we had to remember to manually bump PR in the affected recipes,
or (more often) we'd forget to handle it properly altogether. With the PR
server, PR bumps happen automatically in response to signatures changing,
which is about as accurate an indicator as we can get as far as determining
whether the output has changed, and certainly much less prone to mistakes.
</pre>
    </blockquote>
    <br>
    OK so I can't download the source code to a distribution and built
    identical, identically <br>
    versioned packages to theirs? With something like RPM wouldn't I
    expect to be able to<br>
    download an RPM source package and build an identical, versioned RPM
    from it?<br>
    <br>
    As a minimum my package revision naming will be different from the
    upstream distro <br>
    presumably?<br>
    <br>
    Taking a slightly different tack, if I upgrade a recipe PV from
    1.0.0 to 2.0.0 to correspond <br>
    to the upstream source versioning, and at that time I remove PR and
    build some packages.<br>
    <br>
    Then a month later I realise I need something extra added to the
    configuration options,<br>
    which gives me a different output, what do I change to make sure the
    new package is<br>
    versioned differently from the old package? (i.e. presumably if the
    network service is <br>
    running it will handle it for me, but if it's not running then new
    package will be versioned<br>
    identically to my old package?)<br>
    <br>
    Thanks, Alex<br>
    <br>
    <blockquote
      cite="mid:1535634.dXkxAnYu3c@peggleto-mobl5.ger.corp.intel.com"
      type="cite">
      <pre wrap="">
</pre>
      <blockquote type="cite">
        <pre wrap="">So if I'm releasing packages to production this now becomes a critical
part of my infrastructure as I'll lose all my package revisions if
something goes wrong with it?
</pre>
      </blockquote>
      <pre wrap="">
Yes. Luckily it's not a particularly complicated piece of software; the only
extra thing you need to preserve is the sqlite database that contains the
hashes and corresponding PR values.
 
</pre>
      <blockquote type="cite">
        <pre wrap="">And my packages will have different revisions from somebody elses's
packages when they are running their own network based PR service?
</pre>
      </blockquote>
      <pre wrap="">
Yes. If bbappends were involved all bets were off prior to the PR service
anyway since they were supposed to modify PR.
 
</pre>
      <blockquote type="cite">
        <pre wrap="">I suppose the other question is, if I release a package of revision X,
then another which is up-rev'd' to Y as I made a change to the recipe
and so the NBPRS up-revs, then somebody comes back to me and tells me
they are having a problem with Xm then how do I link that rev X to the
specific commit that went to build it so I can audit ?
</pre>
      </blockquote>
      <pre wrap="">
The PR server doesn't track this - however, all of this information does go
into buildhistory if you enable that.
</pre>
    </blockquote>
    <br>
    Must look at that, yes.<br>
    <br>
    <blockquote
      cite="mid:1535634.dXkxAnYu3c@peggleto-mobl5.ger.corp.intel.com"
      type="cite">
      <pre wrap="">
</pre>
      <blockquote type="cite">
        <pre wrap="">I haven't enabled this here, so does that mean all my package revisions
will be r0 as I remove the PR variables from recipes ?
</pre>
      </blockquote>
      <pre wrap="">
We're not talking about dropping all PR values in existing recipes, we're
talking about dropping them on upgrade (i.e. when PV changes), where
previously we'd have done that anyway or set them to "r0".

Cheers,
Paul

</pre>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <div class="preview">
        <p style="font-family: Helvetica, Arial, sans-serif; font-size:
          10px; line-height: 12px;"><a
            href="http://www.dynamicdevices.co.uk/" class="clink"><img
              src="cid:part1.08010507.05010308@dynamicdevices.co.uk"
              alt="Dynamic Devices Ltd" id="sig-logo" border="0"></a></p>
        <p style="font-family: Helvetica, Arial, sans-serif; font-size:
          10px; line-height: 12px; color: rgb(153, 153, 153);"><span
            id="name-input" style="font-weight: bold;" class="txt">Alex
            J Lennon</span> <span id="title-sep">/</span> <span
            id="title-input" style="color: #999;" class="txt">Director</span><br>
          <span id="address-input" style="color: #999;" class="txt">1
            Queensway, Liverpool L22 4RA</span> </p>
        <p style="font-family: Helvetica, Arial, sans-serif; font-size:
          10px; line-height: 12px;"> <span id="mobile-input"
            style="color: #999;" class="txt">mobile: +44 (0)7956 668178</span>
          <br>
          <br>
        </p>
        <p style="font-size: 10px; line-height: 12px; font-family:
          Helvetica, Arial, sans-serif"> <a id="linkedin-input"
            class="social" href="http://www.linkedin.com/in/alexjlennon"><img
              src="cid:part3.01040706.02070308@dynamicdevices.co.uk"
              alt="Linkedin"></a> <a id="skype-input" class="social"
            href="skype:alexjlennon?add"><img
              src="cid:part5.02090903.03000400@dynamicdevices.co.uk"
              alt="Skype"></a></p>
        <p id="disclaimer-input" style="font-family: Helvetica, Arial,
          sans-serif; color: rgb(153, 153, 153); font-size: 9px;
          line-height: 12px;width: 25%" class="txt">This e-mail message
          may contain confidential or legally privileged information and
          is intended only for the use of the intended recipient(s). Any
          unauthorized disclosure, dissemination, distribution, copying
          or the taking of any action in reliance on the information
          herein is prohibited. E-mails are not secure and cannot be
          guaranteed to be error free as they can be intercepted,
          amended, or contain viruses. Anyone who communicates with us
          by e-mail is deemed to have accepted these risks. Company Name
          is not responsible for errors or omissions in this message and
          denies any responsibility for any damage arising from the use
          of e-mail. Any opinion and other statement contained in this
          message and any attachment are solely those of the author and
          do not necessarily represent those of the company.</p>
      </div>
    </div>
  </body>
</html>

--------------030108050406020000030800
Content-Type: image/png;
 name="ddlogo-4.png"
Content-Transfer-Encoding: base64
Content-ID: <part1.08010507.05010308@dynamicdevices.co.uk>
Content-Disposition: inline;
 filename="ddlogo-4.png"

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
RU5ErkJggg==

--------------030108050406020000030800
Content-Type: image/png;
 name="linkedin.png"
Content-Transfer-Encoding: base64
Content-ID: <part3.01040706.02070308@dynamicdevices.co.uk>
Content-Disposition: inline;
 filename="linkedin.png"

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAgRJREFUeNqUUs9r1EAU/jKZ7I+2
abBZVikKoYhCsbB/gXcFwV7Eu3jwInjyogdBj3oSPHm14KGhBwuC/gkKUqtVSglYarduKutu2c1m
MuO82dqk1YX6YJL35r3vez/mWbWbCw3fd0PfnwjciQqOI51uH3HcjeK4M8+nToyHd640gnP1SViW
dSwCpRS+7vwKniy9D7k3WQl2+xYWv7Sx2epgxmMmaKMtcbrmjiSZrjL4U+MBr5RsfGwlEJr1jGvh
8dXzJuD24hqa3cFIgt09C1zn4kJk6KViWBovlgmk2jdKUn0IyykoSYeBbzbbuPXyk9GXVluoudVD
INtmqHtjOvNwVoTlmf5k+5mo+2fXZo3+4u5bbD24aPSVrQ7mpl20ewL3ltfxORaGhHCMylBCakNC
SfXPcglM4lU5Hl4+i+bPPYMhLJNCoKQbNkQqJ2CFF1149x33X60fkIhMGgxhGZXBiUDPwS5kHXPy
iT56HSH88COfhT6EMViZZXCMIeEUFsktOQe6c2TByCYMYfmAWPRlov92kaCcV2AfISCbvIRlqWYp
QaGv+5KFxp1yXgHdF32kE4awVv3Gc3XpwizWegp6e1Fy7L9eYbC/J398tO0zXGJ5ZVW3kKTRt53t
YO7kKXCnPGLvnEOWSBNsNLeRDkRkedefNsBYqN8twP+IVBGknP8twABFyPH3kUzF5AAAAABJRU5E
rkJggg==

--------------030108050406020000030800
Content-Type: image/png;
 name="skype.png"
Content-Transfer-Encoding: base64
Content-ID: <part5.02090903.03000400@dynamicdevices.co.uk>
Content-Disposition: inline;
 filename="skype.png"

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAq1JREFUeNqMk0trE1EUx/935s4k
k1czbVpfWEctRaFiKZiCUCjqooggxZ0KfgC/QcVF1/oRBLsRXQjxgSu7qAsFpYuWoliLTaSNUJvQ
vJvceVzPndBSF0KHOTPD5fz+55z/vcNmXi2OZuKRHIWTiho4zFVruyg1OwWKaW7HzNz1kUEnk4pD
0xh2fQm6keDsvwJBIFGqNZ23K79yPBWNOJJH8K3q4VPVhfABjwQCSuSMQUiJXkNDNsVhHxDlxNgx
y+GmYaDuMbwvd9Ck0gpOcg2Xeo3wW0Wx7ePhzxZuDZgYT/JQgJG4ruvgLrXzmxL24ITOMHM+jpj+
7wg3jkVwb6kOUM5YQg/XFKu5gfroVhL0nsjwEF4stzA1v447Hzew0XIxHNcxngKebAnsMSo0EQSw
qFggyUBaGDBl1yh6nemz8aXOcHm+gNmv23i52cAmVVmqtMmrAIrlqqpqNkqPbaKerlcw1hdDNtMN
wMbrYh0vim209Cg6lL/ZEhhOmGHHmppDVeuQ221aWG4ZmFrIYy6/g4raErpunkjiebYfV9OgHImK
1ENm34OAYItcVQKTGQN3HRsPVko4+S6PoTc/sLDVCIXuD0ZD8ENdhoxiudpnNfVZk+FzQ+IKmTh5
JIGRnggerdWxQ1lpo+t6peOFB2SruUuMFZ4RrlSUgElx0fDx+HsNo7YVxrOstb+NapzZVeokiIJJ
P2S6HVBPUs1Dj3MWx05TwzVyfaKXI22qygwVypwreqgYSWgywAUuQkaxXPg+dl0POtMgKMb7e3Cq
WsdaTWBV7EKQwLLQ0NFMpDpVjBgebp8+GjLC82gEVxTWyjVnqC8F2+oe0+NWGmMHTqFH+91oC3A9
gUTERItgYuB6boEHnjtd+FPK5ctVR2r6oX5nRmMwTxSY707/FWAAwixkevHIXSQAAAAASUVORK5C
YII=

--------------030108050406020000030800--

--------------000800090901060304080903--
