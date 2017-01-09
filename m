Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29F44E0050B; Mon,  9 Jan 2017 12:52:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.169 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E272AE00443
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 12:52:05 -0800 (PST)
Received: by mail-ua0-f169.google.com with SMTP id 35so38347675uak.1
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 12:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=OrgSPf1Ub4BKfjh/5HMPUMhLdh18MEl1N5Ojwh6tbso=;
	b=G8LH8p2hKeeVt3XUMrLORuNz9LGlSwAc6s7YetzwyeZyjucpk4AGjy5HKiRX7fCmMw
	u06xPoGwUbGNSZwc7XfPMrWCfvzqOxcVTeNVUrO72q6DKTYNqoKwfctSb5aCyFtU8W1N
	lZgEJxf/WurQeZtgndHOcpAW5AAyrHfwMSnhY2ocykNX047Bm92hgmgoerBgrFZGENIX
	y0GPtugkxokgSIbhnm89LhHRXFGkKEe5/mhm1+WbYhWHz5RIktVrJDdSlLnUNRS9wy0R
	lGyR/xvPiSEUuBZkUP9aaddV68JqOwMCJJkHN7w813fvxV1z+kqEiv5LoDchJPOFTFrb
	Lwig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=OrgSPf1Ub4BKfjh/5HMPUMhLdh18MEl1N5Ojwh6tbso=;
	b=qqFiI8TgEQh2sczKHKbDcyifApv3fCKJN3SGSwAUTGhrjENPzqXS5W2oaKI1lSVgQa
	Xg8YUUI7QeP8ssWnnVdrEog3RRjtNgRFeNWAvnOaKLujtGThTfHmAdlvsGPxAiuEI3cn
	UgqIwayI8n4M43jaU6c00YNrAz4vph6F8tIQYaj3qBtzzTHXKk4tGKPo492tD2N6QJYG
	PNhtkid2mLnjtvMfWQQZ81bpDaZY1SAQb07+RgY0oJIHRXE7Eqx/DAor0Enjal5QHfjZ
	YH12fb8EJOnF4AojXmPZR8+B5XY7wvKTsOI9hEVADUveu6m4zS8KJnR3FOaoxRarZbQx
	JTzA==
X-Gm-Message-State: AIkVDXLt/+1KeSIxaBk1DLt/nANcjenUZwUFn9Z7/44QsLbuzSVJMBJLCJ3IsylG2j0IoxCFFFH0ZEcM+9L80Q==
X-Received: by 10.176.1.119 with SMTP id 110mr12523142uak.143.1483995125110;
	Mon, 09 Jan 2017 12:52:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Mon, 9 Jan 2017 12:51:34 -0800 (PST)
In-Reply-To: <fc0bb711-6700-2603-003d-86119f18a638@linux.intel.com>
References: <1483714246-6857-1-git-send-email-jose.a.lamego@linux.intel.com>
	<CAMKF1srB=LYj8_Zp+xQu-dnC74QygMuU08jrq_fh7X-rB5s2bQ@mail.gmail.com>
	<8a451c7c-4da2-4aca-e6f5-ead626045c27@linux.intel.com>
	<CAMKF1srJd84FuXV2GOcP9iHz__zj6KDKHrRB-zAV3h8nNCG=KQ@mail.gmail.com>
	<fc0bb711-6700-2603-003d-86119f18a638@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 9 Jan 2017 12:51:34 -0800
Message-ID: <CAMKF1spAvBCPJisNiGhMMpEdusqWpLiRNkRv0M6eMxdaVLHUQA@mail.gmail.com>
To: Jose Lamego <jose.a.lamego@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jose Lamego <jose.a.lamego@intel.com>
Subject: Re: [patchwork][PATCH] patchwork/templates/patchwork/series: Improve series view
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
X-List-Received-Date: Mon, 09 Jan 2017 20:52:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I just want to make sure that we dont pile collection of patches that
we end up maintaining forever.

On Mon, Jan 9, 2017 at 12:34 PM, Jose Lamego
<jose.a.lamego@linux.intel.com> wrote:
>
>
> On 01/09/2017 02:30 PM, Khem Raj wrote:
>> On Mon, Jan 9, 2017 at 12:21 PM, Jose Lamego
>> <jose.a.lamego@linux.intel.com> wrote:
>>>
>>>
>>> On 01/09/2017 12:44 PM, Khem Raj wrote:
>>>> On Fri, Jan 6, 2017 at 6:50 AM, Jose Lamego
>>>> <jose.a.lamego@linux.intel.com> wrote:
>>>>> From: Jose Lamego <jose.a.lamego@intel.com>
>>>>>
>>>>> Reviewing patches from a series requires heavy usage of the
>>>>> browser navigation buttons, providing a poor UX.
>>>>>
>>>>> This changes allows viewing content from each patch in a series,
>>>>> without leaving the series view.
>>>>>
>>>>
>>>> The patch looks fine to me. Are you also posting these to upstream pat=
chwork ?
>>>
>>> Thanks for the review Khem. These changes currently are going only to
>>> the Yocto-Patchwork repository [1]. Upstream [2] has been not-maintaine=
d
>>> for a while.
>>
>> The upstream is
>> http://jk.ozlabs.org/projects/patchwork/
>>
> Yes, freedesktop's patchwork forked from ozlabs' but diverged some time
> ago. I haven't try to apply these changes on top of that (maybe worth it)=
.
>>>
>>> You can view a working example of the view in patchwork-staging [3].
>>> Production will be updated soon.
>>>
>>> [1] https://git.yoctoproject.org/git/patchwork
>>> [2] https://github.com/dlespiau/patchwork
>>> [3] https://patchwork-staging.openembedded.org
>>>>
>>>>> [YOCTO #10627]
>>>>>
>>>>> Signed-off-by: Jose Lamego <jose.a.lamego@intel.com>
>>>>> ---
>>>>>  htdocs/js/series.js                       |  43 +++++++++++
>>>>>  patchwork/templates/patchwork/patch.html  |  15 ++--
>>>>>  patchwork/templates/patchwork/series.html | 114 ++++++++++++++++----=
----------
>>>>>  3 files changed, 113 insertions(+), 59 deletions(-)
>>>>>  create mode 100644 htdocs/js/series.js
>>>>>
>>>>> diff --git a/htdocs/js/series.js b/htdocs/js/series.js
>>>>> new file mode 100644
>>>>> index 0000000..4f4f477
>>>>> --- /dev/null
>>>>> +++ b/htdocs/js/series.js
>>>>> @@ -0,0 +1,43 @@
>>>>> +$(document).ready(function(){
>>>>> +    $('[data-toggle=3D"tooltip"]').tooltip();
>>>>> +    revTab=3Ddocument.getElementById('revs-list')
>>>>> +    coverView=3Ddocument.getElementById('cover-letter-view'),
>>>>> +    patchView=3Ddocument.getElementById('patch-view'),
>>>>> +    patchList=3Ddocument.getElementById('patches-list')
>>>>> +
>>>>> +    revTab.style.border=3D'none'
>>>>> +    revTab.style.background=3D'transparent'
>>>>> +    revTab.style.padding=3D'15px'
>>>>> +    coverView.style.display=3D'block'
>>>>> +    patchView.style.display=3D'none'
>>>>> +    patchList.style.display=3D'none'
>>>>> +
>>>>> +    document.getElementById('cover-letter-tab').onclick=3Dfunction()=
{
>>>>> +        coverView.style.display=3D'block'
>>>>> +        patchView.style.display=3D'none'
>>>>> +        patchList.style.display=3D'none'
>>>>> +    }
>>>>> +
>>>>> +    document.getElementById('patches-tab').onclick=3Dfunction(){
>>>>> +        coverView.style.display=3D'none'
>>>>> +        patchList.style.display=3D'block'
>>>>> +        patchView.style.display=3D"none"
>>>>> +    }
>>>>> +
>>>>> +    $('#revs-list').on('change', function(e){
>>>>> +        var optionSelected=3D$("option:selected", this)
>>>>> +        jQuery('.tab-content div.tab-pane.fade.in.active').
>>>>> +        removeClass(' in active')
>>>>> +        jQuery('.tab-content div#'+this.value+'.tab-pane.fade').
>>>>> +        addClass(' in active')
>>>>> +        patchView.style.display=3D'none'
>>>>> +    })
>>>>> +
>>>>> +    $('.patch-link').on('click', function(){
>>>>> +        coverView.style.display=3D'none'
>>>>> +        patchView.style.display=3D'block'
>>>>> +        patchView.innerHTML=3D
>>>>> +        '<p style=3D"text-align:center;">Loading patch...</p>'
>>>>> +        $("#patch-view").load(this.getAttribute("data-url") + " #pat=
ch-body")
>>>>> +    })
>>>>> +})
>>>>> diff --git a/patchwork/templates/patchwork/patch.html b/patchwork/tem=
plates/patchwork/patch.html
>>>>> index 5ce540d..59df19d 100644
>>>>> --- a/patchwork/templates/patchwork/patch.html
>>>>> +++ b/patchwork/templates/patchwork/patch.html
>>>>> @@ -7,6 +7,7 @@
>>>>>  {% block title %}{{patch.name}}{% endblock %}
>>>>>
>>>>>  {% block body %}
>>>>> +
>>>>>  <script type=3D"text/javascript">
>>>>>  function toggle_headers(link_id, headers_id)
>>>>>  {
>>>>> @@ -25,10 +26,12 @@ function toggle_headers(link_id, headers_id)
>>>>>
>>>>>  }
>>>>>  </script>
>>>>> -
>>>>> +<div id=3D"patch-body">
>>>>>  <h1>{{ patch.name }}</h1>
>>>>>  <div class=3D"core-info">
>>>>>      <span>Submitted by {{ patch.submitter|personify:project }} on {{=
 patch.date }}</span>
>>>>> +    <span>|</span>
>>>>> +    <span>Patch ID: <strong>{{ patch.id }}</strong></span>
>>>>>  </div>
>>>>>
>>>>>  <h2>Details</h2>
>>>>> @@ -134,10 +137,10 @@ function toggle_headers(link_id, headers_id)
>>>>>        <form method=3D"post">
>>>>>         {% csrf_token %}
>>>>>         <input type=3D"hidden" name=3D"action" value=3D"addtobundle"/=
>
>>>>> -       <select name=3D"bundle_id"/>
>>>>> -        {% for bundle in bundles %}
>>>>> -         <option value=3D"{{bundle.id}}">{{bundle.name}}</option>
>>>>> -        {% endfor %}
>>>>> +        <select name=3D"bundle_id">
>>>>> +         {% for bundle in bundles %}
>>>>> +          <option value=3D"{{bundle.id}}">{{bundle.name}}</option>
>>>>> +         {% endfor %}
>>>>>          </select>
>>>>>         <input value=3D"Add" type=3D"submit"/>
>>>>>        </form>
>>>>> @@ -219,5 +222,5 @@ function toggle_headers(link_id, headers_id)
>>>>>  </pre>
>>>>>  </div>
>>>>>  {% endfor %}
>>>>> -
>>>>> +</div>
>>>>>  {% endblock %}
>>>>> diff --git a/patchwork/templates/patchwork/series.html b/patchwork/te=
mplates/patchwork/series.html
>>>>> index c0a5261..6c35212 100644
>>>>> --- a/patchwork/templates/patchwork/series.html
>>>>> +++ b/patchwork/templates/patchwork/series.html
>>>>> @@ -1,6 +1,7 @@
>>>>>  {% extends "base.html" %}
>>>>>
>>>>>  {% load person %}
>>>>> +{% load static %}
>>>>>
>>>>>  {% block title %}{{project.name}}{% endblock %}
>>>>>  {% block headers %}
>>>>> @@ -9,64 +10,70 @@ $(function () {
>>>>>      pw.setup_series({ patches: 'series-patchlist' });
>>>>>  });
>>>>>  </script>
>>>>> +<script type=3D"text/javascript" src=3D"{% static "js/series.js" %}"=
></script>
>>>>>  {% endblock %}
>>>>>
>>>>>  {% block body %}
>>>>> -<h1>{{ series.name }}</h1>
>>>>> -
>>>>> -<div class=3D"core-info">
>>>>> -  <span>Submitted by {{ series.submitter|personify:project }} on {{ =
series.submitted }}</span>
>>>>> -</div>
>>>>> -
>>>>> -<h2>Details</h2>
>>>>> +  <h1>{{ series.name }}</h1>
>>>>> +
>>>>> +  <div class=3D"core-info">
>>>>> +    <span data-toggle=3D"tooltip" title=3D"View all patches submitte=
d by this user">Submitted by {{ series.submitter|personify:project }} on {{=
 series.submitted }}</span>
>>>>> +    <span>|</span>
>>>>> +    <span>Reviewer: {{ series.reviewer }}</span>
>>>>> +    <span>|</span>
>>>>> +    <span>Updated on: {{ series.last_updated }}</span>
>>>>> +    <span>|</span>
>>>>> +    <span>Series ID: <strong>{{ series.pk }}</strong></span>
>>>>> +  </div>
>>>>>
>>>>> -<table class=3D"patchmeta">
>>>>> -  <tr>
>>>>> -    <th>Reviewer</th>
>>>>> -{% if series.reviewer %}
>>>>> -    <td>{{ series.reviewer.name }}</td>
>>>>> -{% else %}
>>>>> -    <td><em class=3D"text-muted">None</em></td>
>>>>> -{% endif %}
>>>>> -  </tr>
>>>>> -  <tr>
>>>>> -    <th>Submitted</th>
>>>>> -    <td>{{ series.submitted }}</td>
>>>>> -  </tr>
>>>>> -  <tr>
>>>>> -    <th>Last Updated</th>
>>>>> -    <td>{{ series.last_updated }}</td>
>>>>> -  </tr>
>>>>> -  <tr>
>>>>> -    <th>Revision</th>
>>>>> -    <td>{{ series.last_revision.version }}</td>
>>>>> -  </tr>
>>>>> -</table>
>>>>> +  <nav class=3D"navbar navbar-default" role=3D"navigation" id=3D"ser=
ies-navigation">
>>>>> +    <div class=3D"container-fluid">
>>>>> +      <div class=3D"navbar-header">
>>>>> +        <button type=3D"button" class=3D"navbar-toggle collapsed" da=
ta-toggle=3D"collapse" data-target=3D"#navbar-collapse2">
>>>>> +          <span class=3D"sr-only">Toggle navigation</span>
>>>>> +          <span class=3D"icon-bar"></span>
>>>>> +          <span class=3D"icon-bar"></span>
>>>>> +          <span class=3D"icon-bar"></span>
>>>>> +        </button>
>>>>> +      </div>
>>>>> +      <div class=3D"collapse navbar-collapse" id=3D"navbar-collapse2=
">
>>>>> +        <ul class=3D"nav navbar-nav">
>>>>> +          <li>
>>>>> +            <select id=3D"revs-list" data-toggle=3D"tooltip" title=
=3D"Select a Series Revision">
>>>>> +              {% for revision in revisions %}
>>>>> +                <option {% if forloop.last %}selected=3D"selected"{%=
endif%} value=3D'rev{{ revision.version }}'>
>>>>> +                  Revision <strong>{{ revision.version }}</strong>
>>>>> +                </option>
>>>>> +              {% endfor %}
>>>>> +            </select>
>>>>> +          </li>
>>>>> +          <li id=3D"cover-letter-tab">
>>>>> +            <a href=3D"#" data-toggle=3D"tooltip" title=3D"View the =
Cover Letter if available">Cover letter</a>
>>>>> +          </li>
>>>>> +          <li id=3D"patches-tab">
>>>>> +            <a href=3D"#" data-toggle=3D"tooltip" title=3D"List patc=
hes from selected revision">
>>>>> +              Patches ({{ series.latest_revision.n_patches }})
>>>>> +            </a>
>>>>> +          </li>
>>>>> +        </ul>
>>>>> +      </div>
>>>>> +    </div>
>>>>> +  </nav>
>>>>>
>>>>> +  <div id=3D"cover-letter-view">
>>>>>  {% if cover_letter %}
>>>>> -<h2>Cover Letter</h2>
>>>>> -
>>>>> -<div class=3D"comment">
>>>>> -  <pre class=3D"content">
>>>>> -{{ cover_letter }}
>>>>> -  </pre>
>>>>> -</div>
>>>>> -
>>>>> +  <h2>Cover Letter</h2>
>>>>> +  <div class=3D"comment">
>>>>> +    <pre class=3D"content">
>>>>> +      {{ cover_letter }}
>>>>> +    </pre>
>>>>> +  </div>
>>>>> +{% else %}
>>>>> +  <h2 style=3D"color:#909090">No cover letter was found for this ser=
ies.</h2>
>>>>>  {% endif %}
>>>>> +  </div>
>>>>>
>>>>> -<h2>Revisions</h2>
>>>>> -
>>>>> -<div>
>>>>> -
>>>>> -  <ul class=3D"nav nav-pills small-pills" data-tabs=3D"tabs" role=3D=
"tablist">
>>>>> -{% for revision in revisions %}
>>>>> -    <li role=3D"presentation"{% if forloop.last %} class=3D"active"{=
%endif%}>
>>>>> -      <a data-toggle=3D"pill" href=3D"#rev{{ revision.version }}">re=
v {{ revision.version }}</a>
>>>>> -    </li>
>>>>> -{% endfor %}
>>>>> -  </ul>
>>>>> -
>>>>> -  <div class=3D"tab-content">
>>>>> +  <div class=3D"tab-content" id=3D"patches-list">
>>>>>  {% for revision in revisions %}
>>>>>      <div role=3D"tabpanel" id=3D"rev{{ revision.version }}"
>>>>>           class=3D"tab-pane fade{% if forloop.last %} in active{% end=
if %}">
>>>>> @@ -87,8 +94,7 @@ $(function () {
>>>>>          {% for patch in revision.patch_list %}
>>>>>              <tr>
>>>>>                <td></td>
>>>>> -              <td><a href=3D"{% url 'patchwork.views.patch.patch' pa=
tch_id=3Dpatch.id %}"
>>>>> -                >{{ patch.name|default:"[no subject]"|truncatechars:=
100 }}</a></td>
>>>>> +              <td><a href=3D"#" class=3D"patch-link" data-toggle=3D"=
tooltip" title=3D"Click to view the patch at bottom section"data-url=3D"{% =
url 'patchwork.views.patch.patch' patch_id=3Dpatch.id %}">{{ patch.name|def=
ault:"[no subject]"|truncatechars:100 }}</a></td>
>>>>>                <td>{{ patch.submitter|personify:project }}</td>
>>>>>                <td>{{ patch.state }}</td>
>>>>>              <tr>
>>>>> @@ -101,7 +107,7 @@ $(function () {
>>>>>      <h3>Tests</h3>
>>>>>
>>>>>      <div class=3D"well transparent">
>>>>> -      <div class=3D"panel-group" id=3D"test-accordion" role=3D"tabli=
st" aria-multiselectable=3D"true">
>>>>> +      <div class=3D"panel-group" id=3D"test-accordion" role=3D"tabli=
st" aria-multiselectable=3D"true" data-toggle=3D"tooltip" title=3D"Click to=
 view/hide available test results">
>>>>>          {% for test_result in revision.test_results %}
>>>>>          {% include "patchwork/test-result.html" %}
>>>>>          {% endfor %}
>>>>> @@ -114,6 +120,8 @@ $(function () {
>>>>>  {% endfor %}
>>>>>    </div>
>>>>>
>>>>> +  <div id=3D"patch-view" class=3D"container-fluid"></div>
>>>>> +
>>>>>  </div>
>>>>>
>>>>>  {% endblock %}
>>>>> --
>>>>> 1.9.1
>>>>>
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> --
>>> Jose Lamego | OTC Embedded Platforms & Tools | GDC
>>>
>
> --
> Jose Lamego | OTC Embedded Platforms & Tools | GDC
>

